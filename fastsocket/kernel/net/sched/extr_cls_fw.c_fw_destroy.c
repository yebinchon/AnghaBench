
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct fw_head* root; } ;
struct fw_head {struct fw_filter** ht; } ;
struct fw_filter {struct fw_filter* next; } ;


 int HTSIZE ;
 int fw_delete_filter (struct tcf_proto*,struct fw_filter*) ;
 int kfree (struct fw_head*) ;

__attribute__((used)) static void fw_destroy(struct tcf_proto *tp)
{
 struct fw_head *head = tp->root;
 struct fw_filter *f;
 int h;

 if (head == ((void*)0))
  return;

 for (h=0; h<HTSIZE; h++) {
  while ((f=head->ht[h]) != ((void*)0)) {
   head->ht[h] = f->next;
   fw_delete_filter(tp, f);
  }
 }
 kfree(head);
}
