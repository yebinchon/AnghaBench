
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* splay_tree_node ;
typedef int splay_tree_key ;
typedef TYPE_2__* splay_tree ;
struct TYPE_11__ {scalar_t__ root; int (* comp ) (int ,int ) ;} ;
struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; int key; } ;


 int rotate_left (TYPE_1__**,TYPE_1__*,TYPE_1__*) ;
 int rotate_right (TYPE_1__**,TYPE_1__*,TYPE_1__*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ) ;

__attribute__((used)) static void
splay_tree_splay (splay_tree sp, splay_tree_key key)
{
  if (sp->root == 0)
    return;

  do {
    int cmp1, cmp2;
    splay_tree_node n, c;

    n = sp->root;
    cmp1 = (*sp->comp) (key, n->key);


    if (cmp1 == 0)
      return;


    if (cmp1 < 0)
      c = n->left;
    else
      c = n->right;
    if (!c)
      return;



    cmp2 = (*sp->comp) (key, c->key);
    if (cmp2 == 0
        || (cmp2 < 0 && !c->left)
        || (cmp2 > 0 && !c->right))
      {
 if (cmp1 < 0)
   rotate_left (&sp->root, n, c);
 else
   rotate_right (&sp->root, n, c);
        return;
      }


    if (cmp1 < 0 && cmp2 < 0)
      {
 rotate_left (&n->left, c, c->left);
 rotate_left (&sp->root, n, n->left);
      }
    else if (cmp1 > 0 && cmp2 > 0)
      {
 rotate_right (&n->right, c, c->right);
 rotate_right (&sp->root, n, n->right);
      }
    else if (cmp1 < 0 && cmp2 > 0)
      {
 rotate_right (&n->left, c, c->right);
 rotate_left (&sp->root, n, n->left);
      }
    else if (cmp1 > 0 && cmp2 < 0)
      {
 rotate_left (&n->right, c, c->left);
 rotate_right (&sp->root, n, n->right);
      }
  } while (1);
}
