
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_msgseg {struct msg_msgseg* next; } ;
struct msg_msg {struct msg_msg* next; } ;


 int kfree (struct msg_msgseg*) ;
 int security_msg_msg_free (struct msg_msgseg*) ;

void free_msg(struct msg_msg *msg)
{
 struct msg_msgseg *seg;

 security_msg_msg_free(msg);

 seg = msg->next;
 kfree(msg);
 while (seg != ((void*)0)) {
  struct msg_msgseg *tmp = seg->next;
  kfree(seg);
  seg = tmp;
 }
}
