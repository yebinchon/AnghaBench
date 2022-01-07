
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;
struct node {int dummy; } ;


 struct tnode* node_parent (struct node*) ;
 struct tnode* rcu_dereference (struct tnode*) ;

__attribute__((used)) static inline struct tnode *node_parent_rcu(struct node *node)
{
 struct tnode *ret = node_parent(node);

 return rcu_dereference(ret);
}
