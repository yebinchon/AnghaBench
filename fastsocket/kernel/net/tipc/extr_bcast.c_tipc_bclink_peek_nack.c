
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ gap_after; scalar_t__ gap_to; struct sk_buff* deferred_head; } ;
struct tipc_node {TYPE_1__ bclink; } ;
struct sk_buff {struct sk_buff* next; } ;


 scalar_t__ bclink_ack_allowed (scalar_t__) ;
 int bclink_send_nack (struct tipc_node*) ;
 int bclink_set_gap (struct tipc_node*) ;
 scalar_t__ buf_seqno (struct sk_buff*) ;
 scalar_t__ less (scalar_t__,scalar_t__) ;
 scalar_t__ less_eq (scalar_t__,scalar_t__) ;
 int mod (scalar_t__) ;
 struct tipc_node* tipc_node_find (scalar_t__) ;
 int tipc_node_is_up (struct tipc_node*) ;
 int tipc_node_lock (struct tipc_node*) ;
 int tipc_node_unlock (struct tipc_node*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void tipc_bclink_peek_nack(u32 dest, u32 sender_tag, u32 gap_after, u32 gap_to)
{
 struct tipc_node *n_ptr = tipc_node_find(dest);
 u32 my_after, my_to;

 if (unlikely(!n_ptr || !tipc_node_is_up(n_ptr)))
  return;
 tipc_node_lock(n_ptr);



 my_after = n_ptr->bclink.gap_after;
 my_to = n_ptr->bclink.gap_to;

 if (less_eq(gap_after, my_after)) {
  if (less(my_after, gap_to) && less(gap_to, my_to))
   n_ptr->bclink.gap_after = gap_to;
  else if (less_eq(my_to, gap_to))
   n_ptr->bclink.gap_to = n_ptr->bclink.gap_after;
 } else if (less_eq(gap_after, my_to)) {
  if (less_eq(my_to, gap_to))
   n_ptr->bclink.gap_to = gap_after;
 } else {



  struct sk_buff *buf = n_ptr->bclink.deferred_head;
  u32 prev = n_ptr->bclink.gap_to;

  for (; buf; buf = buf->next) {
   u32 seqno = buf_seqno(buf);

   if (mod(seqno - prev) != 1) {
    buf = ((void*)0);
    break;
   }
   if (seqno == gap_after)
    break;
   prev = seqno;
  }
  if (buf == ((void*)0))
   n_ptr->bclink.gap_to = gap_after;
 }



 if (bclink_ack_allowed(sender_tag + 1)) {
  if (n_ptr->bclink.gap_to != n_ptr->bclink.gap_after) {
   bclink_send_nack(n_ptr);
   bclink_set_gap(n_ptr);
  }
 }
 tipc_node_unlock(n_ptr);
}
