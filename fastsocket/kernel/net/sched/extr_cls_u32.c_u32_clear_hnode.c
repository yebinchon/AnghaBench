
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_u_knode {struct tc_u_knode* next; } ;
struct tc_u_hnode {unsigned int divisor; struct tc_u_knode** ht; } ;


 int u32_destroy_key (struct tcf_proto*,struct tc_u_knode*) ;

__attribute__((used)) static void u32_clear_hnode(struct tcf_proto *tp, struct tc_u_hnode *ht)
{
 struct tc_u_knode *n;
 unsigned h;

 for (h=0; h<=ht->divisor; h++) {
  while ((n = ht->ht[h]) != ((void*)0)) {
   ht->ht[h] = n->next;

   u32_destroy_key(tp, n);
  }
 }
}
