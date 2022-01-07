
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int trie; } ;
struct tnode {int dummy; } ;
struct leaf {int dummy; } ;


 scalar_t__ IS_LEAF (struct tnode*) ;
 struct leaf* leaf_walk_rcu (struct tnode*,int *) ;
 scalar_t__ rcu_dereference (int ) ;

__attribute__((used)) static struct leaf *trie_firstleaf(struct trie *t)
{
 struct tnode *n = (struct tnode *) rcu_dereference(t->trie);

 if (!n)
  return ((void*)0);

 if (IS_LEAF(n))
  return (struct leaf *) n;

 return leaf_walk_rcu(n, ((void*)0));
}
