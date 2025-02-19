
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_walker {int stop; scalar_t__ count; scalar_t__ skip; scalar_t__ (* fn ) (struct tcf_proto*,unsigned long,struct tcf_walker*) ;} ;
struct tcf_proto {scalar_t__ root; } ;
struct fw_head {struct fw_filter** ht; } ;
struct fw_filter {struct fw_filter* next; } ;


 int HTSIZE ;
 scalar_t__ stub1 (struct tcf_proto*,unsigned long,struct tcf_walker*) ;

__attribute__((used)) static void fw_walk(struct tcf_proto *tp, struct tcf_walker *arg)
{
 struct fw_head *head = (struct fw_head*)tp->root;
 int h;

 if (head == ((void*)0))
  arg->stop = 1;

 if (arg->stop)
  return;

 for (h = 0; h < HTSIZE; h++) {
  struct fw_filter *f;

  for (f = head->ht[h]; f; f = f->next) {
   if (arg->count < arg->skip) {
    arg->count++;
    continue;
   }
   if (arg->fn(tp, (unsigned long)f, arg) < 0) {
    arg->stop = 1;
    return;
   }
   arg->count++;
  }
 }
}
