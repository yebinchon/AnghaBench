#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* splay_tree_node ;
typedef  int /*<<< orphan*/  splay_tree_key ;
typedef  TYPE_2__* splay_tree ;
struct TYPE_11__ {scalar_t__ root; int (* comp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {struct TYPE_10__* right; struct TYPE_10__* left; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__**,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,TYPE_1__*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (splay_tree sp, splay_tree_key key)
{
  if (sp->root == 0)
    return;

  do {
    int cmp1, cmp2;
    splay_tree_node n, c;

    n = sp->root;
    cmp1 = (*sp->comp) (key, n->key);

    /* Found.  */
    if (cmp1 == 0)
      return;

    /* Left or right?  If no child, then we're done.  */
    if (cmp1 < 0)
      c = n->left;
    else
      c = n->right;
    if (!c)
      return;

    /* Next one left or right?  If found or no child, we're done
       after one rotation.  */
    cmp2 = (*sp->comp) (key, c->key);
    if (cmp2 == 0
        || (cmp2 < 0 && !c->left)
        || (cmp2 > 0 && !c->right))
      {
	if (cmp1 < 0)
	  FUNC0 (&sp->root, n, c);
	else
	  FUNC1 (&sp->root, n, c);
        return;
      }

    /* Now we have the four cases of double-rotation.  */
    if (cmp1 < 0 && cmp2 < 0)
      {
	FUNC0 (&n->left, c, c->left);
	FUNC0 (&sp->root, n, n->left);
      }
    else if (cmp1 > 0 && cmp2 > 0)
      {
	FUNC1 (&n->right, c, c->right);
	FUNC1 (&sp->root, n, n->right);
      }
    else if (cmp1 < 0 && cmp2 > 0)
      {
	FUNC1 (&n->left, c, c->right);
	FUNC0 (&sp->root, n, n->left);
      }
    else if (cmp1 > 0 && cmp2 < 0)
      {
	FUNC0 (&n->right, c, c->left);
	FUNC1 (&sp->root, n, n->right);
      }
  } while (1);
}