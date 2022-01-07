
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct link {struct sk_buff* defragm_buf; } ;


 int buf_discard (struct sk_buff*) ;

void tipc_link_reset_fragments(struct link *l_ptr)
{
 struct sk_buff *buf = l_ptr->defragm_buf;
 struct sk_buff *next;

 while (buf) {
  next = buf->next;
  buf_discard(buf);
  buf = next;
 }
 l_ptr->defragm_buf = ((void*)0);
}
