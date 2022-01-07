
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int swstate; int swb_u_idx; int hw_fragsize; int hw_fragshift; scalar_t__ zero_word; scalar_t__ swbuf; } ;
typedef TYPE_1__ vwsnd_port_t ;
struct TYPE_6__ {TYPE_1__ wport; } ;
typedef TYPE_2__ vwsnd_dev_t ;


 int DBGPV (char*,int) ;
 int DBGRV () ;
 scalar_t__ SW_DRAIN ;
 scalar_t__ SW_RUN ;
 int memset (scalar_t__,char,int) ;
 int pcm_output (TYPE_2__*,int ,int) ;

__attribute__((used)) static void pcm_flush_frag(vwsnd_dev_t *devc)
{
 vwsnd_port_t *wport = &devc->wport;

 DBGPV("swstate = %d\n", wport->swstate);
 if (wport->swstate == SW_RUN) {
  int idx = wport->swb_u_idx;
  int end = (idx + wport->hw_fragsize - 1)
   >> wport->hw_fragshift
   << wport->hw_fragshift;
  int nb = end - idx;
  DBGPV("clearing %d bytes\n", nb);
  if (nb)
   memset(wport->swbuf + idx,
          (char) wport->zero_word,
          nb);
  wport->swstate = SW_DRAIN;
  pcm_output(devc, 0, nb);
 }
 DBGRV();
}
