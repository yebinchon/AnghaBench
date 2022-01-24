#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct et_occ {scalar_t__ depth; scalar_t__ min; int /*<<< orphan*/  min_occ; struct et_occ* prev; } ;
struct et_node {struct et_node* son; struct et_node* right; struct et_node* left; struct et_node* father; struct et_occ* parent_occ; struct et_occ* rightmost_occ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_occ*) ; 
 struct et_occ* FUNC1 (struct et_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC3 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC4 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC5 (struct et_occ*,struct et_occ*) ; 
 int /*<<< orphan*/  FUNC6 (struct et_occ*,struct et_occ*) ; 

void
FUNC7 (struct et_node *t, struct et_node *father)
{
  struct et_node *left, *right;
  struct et_occ *rmost, *left_part, *new_f_occ, *p;

  /* Update the path represented in the splay tree.  */
  new_f_occ = FUNC1 (father);

  rmost = father->rightmost_occ;
  FUNC3 (rmost);

  left_part = rmost->prev;

  p = t->rightmost_occ;
  FUNC3 (p);

  FUNC6 (new_f_occ, left_part);
  FUNC5 (new_f_occ, p);

  p->depth++;
  p->min++;
  FUNC2 (new_f_occ);

  FUNC6 (rmost, new_f_occ);

  if (new_f_occ->min + rmost->depth < rmost->min)
    {
      rmost->min = new_f_occ->min + rmost->depth;
      rmost->min_occ = new_f_occ->min_occ;
    }

  t->parent_occ = new_f_occ;

  /* Update the tree.  */
  t->father = father;
  right = father->son;
  if (right)
    left = right->left;
  else
    left = right = t;

  left->right = t;
  right->left = t;
  t->left = left;
  t->right = right;

  father->son = t;

#ifdef DEBUG_ET
  et_check_tree_sanity (rmost);
  record_path_before (rmost);
#endif
}