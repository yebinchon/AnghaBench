
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* mfsplay_tree_node ;
typedef scalar_t__ mfsplay_tree_key ;
typedef TYPE_2__* mfsplay_tree ;
struct TYPE_9__ {scalar_t__ depth; scalar_t__ max_depth; int rebalance_p; } ;
struct TYPE_8__ {scalar_t__ key; struct TYPE_8__* right; struct TYPE_8__* left; } ;



__attribute__((used)) static mfsplay_tree_node
mfsplay_tree_splay_helper (mfsplay_tree sp,
                         mfsplay_tree_key key,
                         mfsplay_tree_node * node,
                         mfsplay_tree_node * parent,
                         mfsplay_tree_node * grandparent)
{
  mfsplay_tree_node *next;
  mfsplay_tree_node n;
  int comparison;

  n = *node;

  if (!n)
    return *parent;

  comparison = ((key > n->key) ? 1 : ((key < n->key) ? -1 : 0));

  if (comparison == 0)

    next = 0;
  else if (comparison < 0)

    next = &n->left;
  else

    next = &n->right;

  if (next)
    {


      if (sp->depth > sp->max_depth)
        {
          sp->rebalance_p = 1;
          return n;
         }


      sp->depth ++;
      n = mfsplay_tree_splay_helper (sp, key, next, node, parent);
      sp->depth --;



      if (*node != n || sp->rebalance_p)
        return n;
    }

  if (!parent)

    return n;



  if (!grandparent)
    {
      if (n == (*parent)->left)
        {
          *node = n->right;
          n->right = *parent;
        }
      else
        {
          *node = n->left;
          n->left = *parent;
        }
      *parent = n;
      return n;
    }



  if (n == (*parent)->left && *parent == (*grandparent)->left)
    {
      mfsplay_tree_node p = *parent;

      (*grandparent)->left = p->right;
      p->right = *grandparent;
      p->left = n->right;
      n->right = p;
      *grandparent = n;
      return n;
    }
  else if (n == (*parent)->right && *parent == (*grandparent)->right)
    {
      mfsplay_tree_node p = *parent;

      (*grandparent)->right = p->left;
      p->left = *grandparent;
      p->right = n->left;
      n->left = p;
      *grandparent = n;
      return n;
    }



  if (n == (*parent)->left)
    {
      (*parent)->left = n->right;
      n->right = *parent;
      (*grandparent)->right = n->left;
      n->left = *grandparent;
      *grandparent = n;
      return n;
    }
  else
    {
      (*parent)->right = n->left;
      n->left = *parent;
      (*grandparent)->left = n->right;
      n->right = *grandparent;
      *grandparent = n;
      return n;
    }
}
