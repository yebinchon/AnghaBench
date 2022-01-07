
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int n_node; } ;
struct klist {int k_lock; } ;


 int klist_node_init (struct klist*,struct klist_node*) ;
 struct klist* knode_klist (struct klist_node*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void klist_add_before(struct klist_node *n, struct klist_node *pos)
{
 struct klist *k = knode_klist(pos);

 klist_node_init(k, n);
 spin_lock(&k->k_lock);
 list_add_tail(&n->n_node, &pos->n_node);
 spin_unlock(&k->k_lock);
}
