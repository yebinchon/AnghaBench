
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct trie {int trie; } ;
struct tnode {int bits; int pos; int key; } ;
struct node {int dummy; } ;


 scalar_t__ IS_TNODE (struct tnode*) ;
 struct tnode* node_parent (struct node*) ;
 int rcu_assign_pointer (int ,struct node*) ;
 scalar_t__ resize (struct trie*,struct tnode*) ;
 int tkey_extract_bits (int ,int ,int ) ;
 int tnode_free_flush () ;
 int tnode_full (struct tnode*,int ) ;
 int tnode_get_child (struct tnode*,int ) ;
 int tnode_put_child_reorg (struct tnode*,int ,struct node*,int) ;

__attribute__((used)) static void trie_rebalance(struct trie *t, struct tnode *tn)
{
 int wasfull;
 t_key cindex, key;
 struct tnode *tp;

 key = tn->key;

 while (tn != ((void*)0) && (tp = node_parent((struct node *)tn)) != ((void*)0)) {
  cindex = tkey_extract_bits(key, tp->pos, tp->bits);
  wasfull = tnode_full(tp, tnode_get_child(tp, cindex));
  tn = (struct tnode *) resize(t, (struct tnode *)tn);

  tnode_put_child_reorg((struct tnode *)tp, cindex,
          (struct node *)tn, wasfull);

  tp = node_parent((struct node *) tn);
  if (!tp)
   rcu_assign_pointer(t->trie, (struct node *)tn);

  tnode_free_flush();
  if (!tp)
   break;
  tn = tp;
 }


 if (IS_TNODE(tn))
  tn = (struct tnode *)resize(t, (struct tnode *)tn);

 rcu_assign_pointer(t->trie, (struct node *)tn);
 tnode_free_flush();

 return;
}
