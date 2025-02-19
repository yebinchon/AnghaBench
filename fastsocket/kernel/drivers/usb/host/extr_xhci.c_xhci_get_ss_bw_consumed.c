
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_bw_info {unsigned int max_packet_size; int ep_interval; unsigned int mult; unsigned int num_packets; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int) ;
 int SS_BLOCK ;
 unsigned int SS_OVERHEAD ;
 unsigned int SS_OVERHEAD_BURST ;

__attribute__((used)) static unsigned int xhci_get_ss_bw_consumed(struct xhci_bw_info *ep_bw)
{
 unsigned int mps = DIV_ROUND_UP(ep_bw->max_packet_size, SS_BLOCK);

 if (ep_bw->ep_interval == 0)
  return SS_OVERHEAD_BURST +
   (ep_bw->mult * ep_bw->num_packets *
     (SS_OVERHEAD + mps));
 return DIV_ROUND_UP(ep_bw->mult * ep_bw->num_packets *
    (SS_OVERHEAD + mps + SS_OVERHEAD_BURST),
    1 << ep_bw->ep_interval);

}
