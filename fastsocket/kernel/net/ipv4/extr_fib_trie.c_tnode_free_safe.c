
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tnode {int bits; struct tnode* tnode_free; } ;
struct node {int dummy; } ;


 int BUG_ON (int ) ;
 int IS_LEAF (struct tnode*) ;
 struct tnode* tnode_free_head ;
 int tnode_free_size ;

__attribute__((used)) static void tnode_free_safe(struct tnode *tn)
{
 BUG_ON(IS_LEAF(tn));
 tn->tnode_free = tnode_free_head;
 tnode_free_head = tn;
 tnode_free_size += sizeof(struct tnode) +
      (sizeof(struct node *) << tn->bits);
}
