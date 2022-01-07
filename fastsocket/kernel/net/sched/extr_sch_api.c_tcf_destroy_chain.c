
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct tcf_proto* next; } ;


 int tcf_destroy (struct tcf_proto*) ;

void tcf_destroy_chain(struct tcf_proto **fl)
{
 struct tcf_proto *tp;

 while ((tp = *fl) != ((void*)0)) {
  *fl = tp->next;
  tcf_destroy(tp);
 }
}
