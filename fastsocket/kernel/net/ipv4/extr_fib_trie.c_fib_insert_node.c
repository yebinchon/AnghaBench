
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int t_key ;
struct trie {struct tnode* trie; } ;
struct tnode {int pos; int bits; int key; } ;
struct node {int pos; int bits; int key; } ;
struct list_head {int dummy; } ;
struct leaf_info {struct list_head falh; } ;
struct leaf {int list; int key; } ;


 int BUG_ON (int) ;
 scalar_t__ IS_LEAF (struct tnode*) ;
 scalar_t__ NODE_TYPE (struct tnode*) ;
 scalar_t__ T_TNODE ;
 int check_tnode (struct tnode*) ;
 int free_leaf (struct leaf*) ;
 int free_leaf_info (struct leaf_info*) ;
 int insert_leaf_info (int *,struct leaf_info*) ;
 struct leaf_info* leaf_info_new (int) ;
 struct leaf* leaf_new () ;
 struct tnode* node_parent (struct tnode*) ;
 int node_set_parent (struct tnode*,struct tnode*) ;
 int pr_warning (char*,struct tnode*,int,int,int ,int) ;
 int put_child (struct trie*,struct tnode*,int,struct tnode*) ;
 int rcu_assign_pointer (struct tnode*,struct tnode*) ;
 scalar_t__ tkey_equals (int ,int ) ;
 int tkey_extract_bits (int ,int,int) ;
 int tkey_mismatch (int ,int,int ) ;
 scalar_t__ tkey_sub_equals (int ,int,int,int ) ;
 struct tnode* tnode_get_child (struct tnode*,int) ;
 struct tnode* tnode_new (int ,int,int) ;
 int trie_rebalance (struct trie*,struct tnode*) ;

__attribute__((used)) static struct list_head *fib_insert_node(struct trie *t, u32 key, int plen)
{
 int pos, newpos;
 struct tnode *tp = ((void*)0), *tn = ((void*)0);
 struct node *n;
 struct leaf *l;
 int missbit;
 struct list_head *fa_head = ((void*)0);
 struct leaf_info *li;
 t_key cindex;

 pos = 0;
 n = t->trie;
 while (n != ((void*)0) && NODE_TYPE(n) == T_TNODE) {
  tn = (struct tnode *) n;

  check_tnode(tn);

  if (tkey_sub_equals(tn->key, pos, tn->pos-pos, key)) {
   tp = tn;
   pos = tn->pos + tn->bits;
   n = tnode_get_child(tn,
         tkey_extract_bits(key,
             tn->pos,
             tn->bits));

   BUG_ON(n && node_parent(n) != tn);
  } else
   break;
 }







 BUG_ON(tp && IS_LEAF(tp));



 if (n != ((void*)0) && IS_LEAF(n) && tkey_equals(key, n->key)) {
  l = (struct leaf *) n;
  li = leaf_info_new(plen);

  if (!li)
   return ((void*)0);

  fa_head = &li->falh;
  insert_leaf_info(&l->list, li);
  goto done;
 }
 l = leaf_new();

 if (!l)
  return ((void*)0);

 l->key = key;
 li = leaf_info_new(plen);

 if (!li) {
  free_leaf(l);
  return ((void*)0);
 }

 fa_head = &li->falh;
 insert_leaf_info(&l->list, li);

 if (t->trie && n == ((void*)0)) {


  node_set_parent((struct node *)l, tp);

  cindex = tkey_extract_bits(key, tp->pos, tp->bits);
  put_child(t, (struct tnode *)tp, cindex, (struct node *)l);
 } else {






  if (tp)
   pos = tp->pos+tp->bits;
  else
   pos = 0;

  if (n) {
   newpos = tkey_mismatch(key, pos, n->key);
   tn = tnode_new(n->key, newpos, 1);
  } else {
   newpos = 0;
   tn = tnode_new(key, newpos, 1);
  }

  if (!tn) {
   free_leaf_info(li);
   free_leaf(l);
   return ((void*)0);
  }

  node_set_parent((struct node *)tn, tp);

  missbit = tkey_extract_bits(key, newpos, 1);
  put_child(t, tn, missbit, (struct node *)l);
  put_child(t, tn, 1-missbit, n);

  if (tp) {
   cindex = tkey_extract_bits(key, tp->pos, tp->bits);
   put_child(t, (struct tnode *)tp, cindex,
      (struct node *)tn);
  } else {
   rcu_assign_pointer(t->trie, (struct node *)tn);
   tp = tn;
  }
 }

 if (tp && tp->pos + tp->bits > 32)
  pr_warning("fib_trie"
      " tp=%p pos=%d, bits=%d, key=%0x plen=%d\n",
      tp, tp->pos, tp->bits, key, plen);



 trie_rebalance(t, tp);
done:
 return fa_head;
}
