
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {struct route4_head* root; } ;
struct route4_head {struct route4_filter** ht; struct route4_head** table; } ;
struct route4_filter {struct route4_filter* next; } ;
struct route4_bucket {struct route4_filter** ht; struct route4_bucket** table; } ;


 int kfree (struct route4_head*) ;
 int route4_delete_filter (struct tcf_proto*,struct route4_filter*) ;

__attribute__((used)) static void route4_destroy(struct tcf_proto *tp)
{
 struct route4_head *head = tp->root;
 int h1, h2;

 if (head == ((void*)0))
  return;

 for (h1=0; h1<=256; h1++) {
  struct route4_bucket *b;

  if ((b = head->table[h1]) != ((void*)0)) {
   for (h2=0; h2<=32; h2++) {
    struct route4_filter *f;

    while ((f = b->ht[h2]) != ((void*)0)) {
     b->ht[h2] = f->next;
     route4_delete_filter(tp, f);
    }
   }
   kfree(b);
  }
 }
 kfree(head);
}
