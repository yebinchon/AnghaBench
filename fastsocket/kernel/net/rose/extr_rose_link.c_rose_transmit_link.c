
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int data; int dev; } ;
struct rose_neigh {scalar_t__ dce_mode; int queue; scalar_t__ restarted; scalar_t__ loopback; } ;


 int AX25_P_ROSE ;
 scalar_t__ FW_ACCEPT ;
 int PF_ROSE ;
 scalar_t__ call_fw_firewall (int ,int ,int ,int *,struct sk_buff**) ;
 int kfree_skb (struct sk_buff*) ;
 int rose_link_up (struct rose_neigh*) ;
 int rose_loopback_queue (struct sk_buff*,struct rose_neigh*) ;
 int rose_send_frame (struct sk_buff*,struct rose_neigh*) ;
 int rose_start_t0timer (struct rose_neigh*) ;
 int rose_t0timer_running (struct rose_neigh*) ;
 int rose_transmit_restart_request (struct rose_neigh*) ;
 unsigned char* skb_push (struct sk_buff*,int) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

void rose_transmit_link(struct sk_buff *skb, struct rose_neigh *neigh)
{
 unsigned char *dptr;
 if (neigh->loopback) {
  rose_loopback_queue(skb, neigh);
  return;
 }

 if (!rose_link_up(neigh))
  neigh->restarted = 0;

 dptr = skb_push(skb, 1);
 *dptr++ = AX25_P_ROSE;

 if (neigh->restarted) {
  if (!rose_send_frame(skb, neigh))
   kfree_skb(skb);
 } else {
  skb_queue_tail(&neigh->queue, skb);

  if (!rose_t0timer_running(neigh)) {
   rose_transmit_restart_request(neigh);
   neigh->dce_mode = 0;
   rose_start_t0timer(neigh);
  }
 }
}
