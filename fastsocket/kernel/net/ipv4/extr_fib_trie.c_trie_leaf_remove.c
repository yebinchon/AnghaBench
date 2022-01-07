
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct trie {int trie; } ;
struct tnode {int bits; int pos; } ;
struct node {int dummy; } ;
struct leaf {int key; } ;


 int free_leaf (struct leaf*) ;
 struct tnode* node_parent (struct node*) ;
 int pr_debug (char*,struct leaf*) ;
 int put_child (struct trie*,struct tnode*,int ,int *) ;
 int rcu_assign_pointer (int ,int *) ;
 int tkey_extract_bits (int ,int ,int ) ;
 int trie_rebalance (struct trie*,struct tnode*) ;

__attribute__((used)) static void trie_leaf_remove(struct trie *t, struct leaf *l)
{
 struct tnode *tp = node_parent((struct node *) l);

 pr_debug("entering trie_leaf_remove(%p)\n", l);

 if (tp) {
  t_key cindex = tkey_extract_bits(l->key, tp->pos, tp->bits);
  put_child(t, (struct tnode *)tp, cindex, ((void*)0));
  trie_rebalance(t, tp);
 } else
  rcu_assign_pointer(t->trie, ((void*)0));

 free_leaf(l);
}
