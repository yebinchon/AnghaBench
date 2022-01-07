
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist_node {scalar_t__ aux; } ;
struct ulist_iterator {int dummy; } ;
struct ulist {int dummy; } ;
struct extent_inode_elem {struct extent_inode_elem* next; } ;


 int ULIST_ITER_INIT (struct ulist_iterator*) ;
 int kfree (struct extent_inode_elem*) ;
 int ulist_free (struct ulist*) ;
 struct ulist_node* ulist_next (struct ulist*,struct ulist_iterator*) ;

__attribute__((used)) static void free_leaf_list(struct ulist *blocks)
{
 struct ulist_node *node = ((void*)0);
 struct extent_inode_elem *eie;
 struct extent_inode_elem *eie_next;
 struct ulist_iterator uiter;

 ULIST_ITER_INIT(&uiter);
 while ((node = ulist_next(blocks, &uiter))) {
  if (!node->aux)
   continue;
  eie = (struct extent_inode_elem *)node->aux;
  for (; eie; eie = eie_next) {
   eie_next = eie->next;
   kfree(eie);
  }
  node->aux = 0;
 }

 ulist_free(blocks);
}
