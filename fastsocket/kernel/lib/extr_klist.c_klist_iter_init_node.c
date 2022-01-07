
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_ref; } ;
struct klist_iter {struct klist_node* i_cur; struct klist* i_klist; } ;
struct klist {int dummy; } ;


 int kref_get (int *) ;

void klist_iter_init_node(struct klist *k, struct klist_iter *i,
     struct klist_node *n)
{
 i->i_klist = k;
 i->i_cur = n;
 if (n)
  kref_get(&n->n_ref);
}
