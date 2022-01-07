
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_key ;
struct tnode {int pos; int bits; int empty_children; scalar_t__ full_children; int key; int parent; } ;
struct node {int dummy; } ;


 int T_TNODE ;
 int pr_debug (char*,struct tnode*,unsigned int,unsigned long) ;
 struct tnode* tnode_alloc (size_t) ;

__attribute__((used)) static struct tnode *tnode_new(t_key key, int pos, int bits)
{
 size_t sz = sizeof(struct tnode) + (sizeof(struct node *) << bits);
 struct tnode *tn = tnode_alloc(sz);

 if (tn) {
  tn->parent = T_TNODE;
  tn->pos = pos;
  tn->bits = bits;
  tn->key = key;
  tn->full_children = 0;
  tn->empty_children = 1<<bits;
 }

 pr_debug("AT %p s=%u %lu\n", tn, (unsigned int) sizeof(struct tnode),
   (unsigned long) (sizeof(struct node) << bits));
 return tn;
}
