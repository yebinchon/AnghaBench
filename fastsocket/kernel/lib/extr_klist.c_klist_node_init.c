
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_ref; int n_node; } ;
struct klist {int (* get ) (struct klist_node*) ;} ;


 int INIT_LIST_HEAD (int *) ;
 int knode_set_klist (struct klist_node*,struct klist*) ;
 int kref_init (int *) ;
 int stub1 (struct klist_node*) ;

__attribute__((used)) static void klist_node_init(struct klist *k, struct klist_node *n)
{
 INIT_LIST_HEAD(&n->n_node);
 kref_init(&n->n_ref);
 knode_set_klist(n, k);
 if (k->get)
  k->get(n);
}
