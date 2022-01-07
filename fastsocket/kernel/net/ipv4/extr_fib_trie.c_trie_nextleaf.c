
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int dummy; } ;
struct node {int dummy; } ;
struct leaf {int dummy; } ;


 struct leaf* leaf_walk_rcu (struct tnode*,struct node*) ;
 struct tnode* node_parent_rcu (struct node*) ;

__attribute__((used)) static struct leaf *trie_nextleaf(struct leaf *l)
{
 struct node *c = (struct node *) l;
 struct tnode *p = node_parent_rcu(c);

 if (!p)
  return ((void*)0);

 return leaf_walk_rcu(p, c);
}
