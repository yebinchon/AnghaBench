
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int hwbuf_max; int hwbuf_size; int swbuf_size; int hw_fragsize; int flags; scalar_t__ hwstate; scalar_t__ swstate; int const swb_i_avail; int swb_i_idx; int byte_count; int frag_count; int lock; int queue; int chan; int swbuf; } ;
typedef TYPE_1__ vwsnd_port_t ;
typedef scalar_t__ vwsnd_port_swstate_t ;
typedef scalar_t__ vwsnd_port_hwstate_t ;
struct TYPE_9__ {TYPE_1__ rport; } ;
typedef TYPE_2__ vwsnd_dev_t ;


 int ASSERT (int) ;
 int DBGEV (char*,TYPE_2__*,int,int) ;
 int DBGP (char*,int const,...) ;
 int DBGPV (char*,...) ;
 int DBGRV () ;
 int DISABLED ;
 int ERFLOWN ;
 int HW_BUSY ;
 scalar_t__ HW_STOPPED ;
 scalar_t__ SW_RUN ;
 int __swb_inc_i (TYPE_1__*,int) ;
 int __swb_inc_u (TYPE_1__*,int) ;
 int li_deactivate_dma (int *) ;
 int li_read_hwptr (int *) ;
 int li_read_swptr (int *) ;
 int li_write_swptr (int *,int) ;
 int pcm_copy_in (TYPE_1__*,int,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up (int *) ;

__attribute__((used)) static void pcm_input(vwsnd_dev_t *devc, int erflown, int nb)
{
 vwsnd_port_t *rport = &devc->rport;
 const int hwmax = rport->hwbuf_max;
 const int hwsize = rport->hwbuf_size;
 const int swsize = rport->swbuf_size;
 const int fragsize = rport->hw_fragsize;
 unsigned long iflags;

 DBGEV("(devc=0x%p, erflown=%d, nb=%d)\n", devc, erflown, nb);

 spin_lock_irqsave(&rport->lock, iflags);
 if (erflown)
  rport->flags |= ERFLOWN;
 (void) __swb_inc_u(rport, nb);
 if (rport->flags & HW_BUSY || !rport->swbuf) {
  spin_unlock_irqrestore(&rport->lock, iflags);
  DBGPV("returning: HW BUSY or !swbuf\n");
  return;
 }
 if (rport->flags & DISABLED) {
  spin_unlock_irqrestore(&rport->lock, iflags);
  DBGPV("returning: DISABLED\n");
  return;
 }
 rport->flags |= HW_BUSY;
 while (1) {
  int swptr, hwptr, hw_avail, sw_avail, swidx;
  vwsnd_port_hwstate_t hwstate = rport->hwstate;
  vwsnd_port_swstate_t swstate = rport->swstate;

  hwptr = li_read_hwptr(&rport->chan);
  swptr = li_read_swptr(&rport->chan);
  hw_avail = (hwptr - swptr + hwsize) % hwsize & -fragsize;
  if (hw_avail > hwmax)
   hw_avail = hwmax;
  sw_avail = rport->swb_i_avail & -fragsize;
  if (swstate != SW_RUN) {
   DBGP("stopping.  hwstate = %d\n", hwstate);
   if (hwstate != HW_STOPPED) {
    li_deactivate_dma(&rport->chan);
    rport->hwstate = HW_STOPPED;
   }
   wake_up(&rport->queue);
   break;
  }
  if (!sw_avail || !hw_avail)
   break;
  spin_unlock_irqrestore(&rport->lock, iflags);







  swidx = rport->swb_i_idx;
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
  DBGPV("copying hwb[%d..%d] to swb[%d..%d]\n",
        swptr, swptr + nb, swidx, swidx + nb);
  pcm_copy_in(rport, swidx, swptr, nb);
  li_write_swptr(&rport->chan, (swptr + nb) % hwsize);
  spin_lock_irqsave(&rport->lock, iflags);
  __swb_inc_i(rport, nb);
  rport->byte_count += nb;
  rport->frag_count += nb / fragsize;
  ASSERT(nb % fragsize == 0);
  wake_up(&rport->queue);
 }
 rport->flags &= ~HW_BUSY;
 spin_unlock_irqrestore(&rport->lock, iflags);
 DBGRV();
}
