
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trie {int dummy; } ;
struct tnode {int pos; int bits; scalar_t__* child; int key; } ;
struct node {int key; } ;


 int ENOMEM ;
 struct tnode* ERR_PTR (int ) ;
 int pr_debug (char*) ;
 int put_child (struct trie*,struct tnode*,int,struct node*) ;
 struct node* resize (struct trie*,struct tnode*) ;
 int tnode_child_length (struct tnode*) ;
 int tnode_free (struct tnode*) ;
 int tnode_free_safe (struct tnode*) ;
 struct node* tnode_get_child (struct tnode*,int) ;
 struct tnode* tnode_new (int ,int,int) ;

__attribute__((used)) static struct tnode *halve(struct trie *t, struct tnode *tn)
{
 struct tnode *oldtnode = tn;
 struct node *left, *right;
 int i;
 int olen = tnode_child_length(tn);

 pr_debug("In halve\n");

 tn = tnode_new(oldtnode->key, oldtnode->pos, oldtnode->bits - 1);

 if (!tn)
  return ERR_PTR(-ENOMEM);
 for (i = 0; i < olen; i += 2) {
  left = tnode_get_child(oldtnode, i);
  right = tnode_get_child(oldtnode, i+1);


  if (left && right) {
   struct tnode *newn;

   newn = tnode_new(left->key, tn->pos + tn->bits, 1);

   if (!newn)
    goto nomem;

   put_child(t, tn, i/2, (struct node *)newn);
  }

 }

 for (i = 0; i < olen; i += 2) {
  struct tnode *newBinNode;

  left = tnode_get_child(oldtnode, i);
  right = tnode_get_child(oldtnode, i+1);


  if (left == ((void*)0)) {
   if (right == ((void*)0))
    continue;
   put_child(t, tn, i/2, right);
   continue;
  }

  if (right == ((void*)0)) {
   put_child(t, tn, i/2, left);
   continue;
  }


  newBinNode = (struct tnode *) tnode_get_child(tn, i/2);
  put_child(t, tn, i/2, ((void*)0));
  put_child(t, newBinNode, 0, left);
  put_child(t, newBinNode, 1, right);
  put_child(t, tn, i/2, resize(t, newBinNode));
 }
 tnode_free_safe(oldtnode);
 return tn;
nomem:
 {
  int size = tnode_child_length(tn);
  int j;

  for (j = 0; j < size; j++)
   if (tn->child[j])
    tnode_free((struct tnode *)tn->child[j]);

  tnode_free(tn);

  return ERR_PTR(-ENOMEM);
 }
}
