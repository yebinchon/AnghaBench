
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int hwbuf_max; int hwbuf_size; int swbuf_size; int hw_fragsize; int flags; scalar_t__ hwstate; scalar_t__ swstate; int const swb_i_avail; int swb_i_idx; int byte_count; int frame_size; int frag_count; int lock; int queue; scalar_t__ MSC_offset; int chan; } ;
typedef TYPE_1__ vwsnd_port_t ;
typedef scalar_t__ vwsnd_port_swstate_t ;
typedef scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_11__ {TYPE_1__ wport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct TYPE_12__ {scalar_t__ msc; } ;
typedef TYPE_3__ ustmsc_t ;


 int ASSERT (int) ;
 int DBGEV (char*,TYPE_2__*,int,int) ;
 int DBGP (char*,int const,...) ;
 int DBGPV (char*,...) ;
 int DBGRV () ;
 int DISABLED ;
 int ERFLOWN ;
 int HW_BUSY ;
 scalar_t__ HW_RUNNING ;
 scalar_t__ HW_STOPPED ;
 scalar_t__ SW_DRAIN ;
 scalar_t__ SW_INITIAL ;
 scalar_t__ SW_OFF ;
 scalar_t__ SW_RUN ;
 int __swb_inc_i (TYPE_1__*,int) ;
 int __swb_inc_u (TYPE_1__*,int) ;
 int li_activate_dma (int *) ;
 int li_deactivate_dma (int *) ;
 int li_read_USTMSC (int *,TYPE_3__*) ;
 int li_read_hwptr (int *) ;
 int li_read_swptr (int *) ;
 int li_write_swptr (int *,int) ;
 int pcm_copy_out (TYPE_1__*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void pcm_output(vwsnd_dev_t *devc, int erflown, int nb)
{
 vwsnd_port_t *wport = &devc->wport;
 const int hwmax = wport->hwbuf_max;
 const int hwsize = wport->hwbuf_size;
 const int swsize = wport->swbuf_size;
 const int fragsize = wport->hw_fragsize;
 unsigned long iflags;

 DBGEV("(devc=0x%p, erflown=%d, nb=%d)\n", devc, erflown, nb);
 spin_lock_irqsave(&wport->lock, iflags);
 if (erflown)
  wport->flags |= ERFLOWN;
 (void) __swb_inc_u(wport, nb);
 if (wport->flags & HW_BUSY) {
  spin_unlock_irqrestore(&wport->lock, iflags);
  DBGPV("returning: HW BUSY\n");
  return;
 }
 if (wport->flags & DISABLED) {
  spin_unlock_irqrestore(&wport->lock, iflags);
  DBGPV("returning: DISABLED\n");
  return;
 }
 wport->flags |= HW_BUSY;
 while (1) {
  int swptr, hwptr, hw_avail, sw_avail, swidx;
  vwsnd_port_hwstate_t hwstate = wport->hwstate;
  vwsnd_port_swstate_t swstate = wport->swstate;
  int hw_unavail;
  ustmsc_t ustmsc;

  hwptr = li_read_hwptr(&wport->chan);
  swptr = li_read_swptr(&wport->chan);
  hw_unavail = (swptr - hwptr + hwsize) % hwsize;
  hw_avail = (hwmax - hw_unavail) & -fragsize;
  sw_avail = wport->swb_i_avail & -fragsize;
  if (sw_avail && swstate == SW_RUN) {
   if (wport->flags & ERFLOWN) {
    wport->flags &= ~ERFLOWN;
   }
  } else if (swstate == SW_INITIAL ||
    swstate == SW_OFF ||
    (swstate == SW_DRAIN &&
     !sw_avail &&
     (wport->flags & ERFLOWN))) {
   DBGP("stopping.  hwstate = %d\n", hwstate);
   if (hwstate != HW_STOPPED) {
    li_deactivate_dma(&wport->chan);
    wport->hwstate = HW_STOPPED;
   }
   wake_up(&wport->queue);
   break;
  }
  if (!sw_avail || !hw_avail)
   break;
  spin_unlock_irqrestore(&wport->lock, iflags);







  swidx = wport->swb_i_idx;
  nb = hw_avail;
  if (nb > sw_avail)
   nb = sw_avail;
  if (nb > hwsize - swptr)
   nb = hwsize - swptr;
  if (nb > swsize - swidx)
   nb = swsize - swidx;
  ASSERT(nb > 0);
  if (nb % fragsize) {
   DBGP("nb = %d, fragsize = %d\n", nb, fragsize);
   DBGP("hw_avail = %d\n", hw_avail);
   DBGP("sw_avail = %d\n", sw_avail);
   DBGP("hwsize = %d, swptr = %d\n", hwsize, swptr);
   DBGP("swsize = %d, swidx = %d\n", swsize, swidx);
  }
  ASSERT(!(nb % fragsize));
  DBGPV("copying swb[%d..%d] to hwb[%d..%d]\n",
        swidx, swidx + nb, swptr, swptr + nb);
  pcm_copy_out(wport, swidx, swptr, nb);
  li_write_swptr(&wport->chan, (swptr + nb) % hwsize);
  spin_lock_irqsave(&wport->lock, iflags);
  if (hwstate == HW_STOPPED) {
   DBGPV("starting\n");
   li_activate_dma(&wport->chan);
   wport->hwstate = HW_RUNNING;
   li_read_USTMSC(&wport->chan, &ustmsc);
   ASSERT(wport->byte_count % wport->frame_size == 0);
   wport->MSC_offset = ustmsc.msc - wport->byte_count / wport->frame_size;
  }
  __swb_inc_i(wport, nb);
  wport->byte_count += nb;
  wport->frag_count += nb / fragsize;
  ASSERT(nb % fragsize == 0);
  wake_up(&wport->queue);
 }
 wport->flags &= ~HW_BUSY;
 spin_unlock_irqrestore(&wport->lock, iflags);
 DBGRV();
}
