
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int bits; struct node** child; int full_children; int empty_children; } ;
struct node {int dummy; } ;


 int BUG_ON (int) ;
 int node_set_parent (struct node*,struct tnode*) ;
 int rcu_assign_pointer (struct node*,struct node*) ;
 int tnode_full (struct tnode*,struct node*) ;

__attribute__((used)) static void tnode_put_child_reorg(struct tnode *tn, int i, struct node *n,
      int wasfull)
{
 struct node *chi = tn->child[i];
 int isfull;

 BUG_ON(i >= 1<<tn->bits);


 if (n == ((void*)0) && chi != ((void*)0))
  tn->empty_children++;
 else if (n != ((void*)0) && chi == ((void*)0))
  tn->empty_children--;


 if (wasfull == -1)
  wasfull = tnode_full(tn, chi);

 isfull = tnode_full(tn, n);
 if (wasfull && !isfull)
  tn->full_children--;
 else if (!wasfull && isfull)
  tn->full_children++;

 if (n)
  node_set_parent(n, tn);

 rcu_assign_pointer(tn->child[i], n);
}
