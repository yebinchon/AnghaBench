
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tipc_msg {int dummy; } ;
struct sk_buff {struct sk_buff* next; } ;


 int buf_discard (struct sk_buff*) ;
 struct tipc_msg* buf_msg (struct sk_buff*) ;
 scalar_t__ less (int,int) ;
 int msg_seqno (struct tipc_msg*) ;

u32 tipc_link_defer_pkt(struct sk_buff **head,
   struct sk_buff **tail,
   struct sk_buff *buf)
{
 struct sk_buff *prev = ((void*)0);
 struct sk_buff *crs = *head;
 u32 seq_no = msg_seqno(buf_msg(buf));

 buf->next = ((void*)0);


 if (*head == ((void*)0)) {
  *head = *tail = buf;
  return 1;
 }


 if (less(msg_seqno(buf_msg(*tail)), seq_no)) {
  (*tail)->next = buf;
  *tail = buf;
  return 1;
 }


 do {
  struct tipc_msg *msg = buf_msg(crs);

  if (less(seq_no, msg_seqno(msg))) {
   buf->next = crs;
   if (prev)
    prev->next = buf;
   else
    *head = buf;
   return 1;
  }
  if (seq_no == msg_seqno(msg)) {
   break;
  }
  prev = crs;
  crs = crs->next;
 }
 while (crs);



 buf_discard(buf);
 return 0;
}
