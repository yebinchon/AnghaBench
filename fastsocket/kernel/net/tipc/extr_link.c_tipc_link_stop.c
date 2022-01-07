
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct link {struct sk_buff* proto_msg_queue; struct sk_buff* first_out; struct sk_buff* oldest_deferred_in; } ;


 int buf_discard (struct sk_buff*) ;
 int tipc_link_reset_fragments (struct link*) ;

void tipc_link_stop(struct link *l_ptr)
{
 struct sk_buff *buf;
 struct sk_buff *next;

 buf = l_ptr->oldest_deferred_in;
 while (buf) {
  next = buf->next;
  buf_discard(buf);
  buf = next;
 }

 buf = l_ptr->first_out;
 while (buf) {
  next = buf->next;
  buf_discard(buf);
  buf = next;
 }

 tipc_link_reset_fragments(l_ptr);

 buf_discard(l_ptr->proto_msg_queue);
 l_ptr->proto_msg_queue = ((void*)0);
}
