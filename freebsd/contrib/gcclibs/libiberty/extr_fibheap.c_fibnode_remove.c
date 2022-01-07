
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* fibnode_t ;
struct TYPE_6__ {struct TYPE_6__* right; struct TYPE_6__* left; TYPE_1__* parent; } ;
struct TYPE_5__ {TYPE_2__* child; } ;



__attribute__((used)) static fibnode_t
fibnode_remove (fibnode_t node)
{
  fibnode_t ret;

  if (node == node->left)
    ret = ((void*)0);
  else
    ret = node->left;

  if (node->parent != ((void*)0) && node->parent->child == node)
    node->parent->child = ret;

  node->right->left = node->left;
  node->left->right = node->right;

  node->parent = ((void*)0);
  node->left = node;
  node->right = node;

  return ret;
}
