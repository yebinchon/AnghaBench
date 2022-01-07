
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist_node {int dummy; } ;
struct ulist_iterator {scalar_t__ i; } ;
struct ulist {scalar_t__ nnodes; struct ulist_node* nodes; } ;



struct ulist_node *ulist_next(struct ulist *ulist, struct ulist_iterator *uiter)
{
 if (ulist->nnodes == 0)
  return ((void*)0);
 if (uiter->i < 0 || uiter->i >= ulist->nnodes)
  return ((void*)0);

 return &ulist->nodes[uiter->i++];
}
