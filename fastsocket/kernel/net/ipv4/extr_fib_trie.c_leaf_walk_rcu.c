
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int t_key ;
struct tnode {int bits; int * child; int pos; } ;
struct node {int key; } ;
struct leaf {int dummy; } ;


 scalar_t__ IS_LEAF (struct node*) ;
 struct tnode* node_parent_rcu (struct node*) ;
 int prefetch (int ) ;
 unsigned int tkey_extract_bits (int ,int ,int) ;
 struct node* tnode_get_child_rcu (struct tnode*,int ) ;

__attribute__((used)) static struct leaf *leaf_walk_rcu(struct tnode *p, struct node *c)
{
 do {
  t_key idx;

  if (c)
   idx = tkey_extract_bits(c->key, p->pos, p->bits) + 1;
  else
   idx = 0;

  while (idx < 1u << p->bits) {
   c = tnode_get_child_rcu(p, idx++);
   if (!c)
    continue;

   if (IS_LEAF(c)) {
    prefetch(p->child[idx]);
    return (struct leaf *) c;
   }


   p = (struct tnode *) c;
   idx = 0;
  }


  c = (struct node *) p;
 } while ( (p = node_parent_rcu(c)) != ((void*)0));

 return ((void*)0);
}
