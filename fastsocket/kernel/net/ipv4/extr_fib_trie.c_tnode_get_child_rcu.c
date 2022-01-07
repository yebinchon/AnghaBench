
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;
struct node {int dummy; } ;


 struct node* rcu_dereference (struct node*) ;
 struct node* tnode_get_child (struct tnode*,unsigned int) ;

__attribute__((used)) static inline struct node *tnode_get_child_rcu(struct tnode *tn, unsigned int i)
{
 struct node *ret = tnode_get_child(tn, i);

 return rcu_dereference(ret);
}
