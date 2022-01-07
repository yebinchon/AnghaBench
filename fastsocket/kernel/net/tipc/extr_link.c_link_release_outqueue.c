
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {struct sk_buff* next; } ;
struct link {scalar_t__ out_queue_size; struct sk_buff* first_out; } ;


 int buf_discard (struct sk_buff*) ;

__attribute__((used)) static void link_release_outqueue(struct link *l_ptr)
{
 struct sk_buff *buf = l_ptr->first_out;
 struct sk_buff *next;

 while (buf) {
  next = buf->next;
  buf_discard(buf);
  buf = next;
 }
 l_ptr->first_out = ((void*)0);
 l_ptr->out_queue_size = 0;
}
