
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trie {int trie; } ;
struct tnode {int pos; int bits; int key; } ;
struct node {int key; } ;
struct leaf {int dummy; } ;


 scalar_t__ IS_LEAF (struct node*) ;
 scalar_t__ NODE_TYPE (struct node*) ;
 scalar_t__ T_TNODE ;
 int check_tnode (struct tnode*) ;
 struct node* rcu_dereference (int ) ;
 scalar_t__ tkey_equals (int ,int ) ;
 int tkey_extract_bits (int ,int,int) ;
 scalar_t__ tkey_sub_equals (int ,int,int,int ) ;
 struct node* tnode_get_child_rcu (struct tnode*,int ) ;

__attribute__((used)) static struct leaf *
fib_find_node(struct trie *t, u32 key)
{
 int pos;
 struct tnode *tn;
 struct node *n;

 pos = 0;
 n = rcu_dereference(t->trie);

 while (n != ((void*)0) && NODE_TYPE(n) == T_TNODE) {
  tn = (struct tnode *) n;

  check_tnode(tn);

  if (tkey_sub_equals(tn->key, pos, tn->pos-pos, key)) {
   pos = tn->pos + tn->bits;
   n = tnode_get_child_rcu(tn,
      tkey_extract_bits(key,
          tn->pos,
          tn->bits));
  } else
   break;
 }


 if (n != ((void*)0) && IS_LEAF(n) && tkey_equals(key, n->key))
  return (struct leaf *)n;

 return ((void*)0);
}
