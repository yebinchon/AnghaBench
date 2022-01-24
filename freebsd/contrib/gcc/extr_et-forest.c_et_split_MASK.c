#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct et_occ {scalar_t__ min; scalar_t__ depth; int /*<<< orphan*/ * parent; struct et_occ* next; struct et_occ* prev; } ;
struct et_node {struct et_node* father; struct et_node* right; TYPE_1__* left; struct et_node* son; struct et_occ* parent_occ; struct et_occ* rightmost_occ; } ;
struct TYPE_2__ {struct et_node* right; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct et_occ*) ; 
 int /*<<< orphan*/  et_occurrences ; 
 int /*<<< orphan*/  FUNC1 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC2 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct et_occ*) ; 
 int /*<<< orphan*/  FUNC4 (struct et_occ*) ; 
 int /*<<< orphan*/  FUNC5 (struct et_occ*,struct et_occ*) ; 

void
FUNC6 (struct et_node *t)
{
  struct et_node *father = t->father;
  struct et_occ *r, *l, *rmost, *p_occ;

  /* Update the path represented by the splay tree.  */
  rmost = t->rightmost_occ;
  FUNC2 (rmost);

  for (r = rmost->next; r->prev; r = r->prev)
    continue;
  FUNC2 (r); 

  r->prev->parent = NULL;
  p_occ = t->parent_occ;
  FUNC2 (p_occ);
  t->parent_occ = NULL;

  l = p_occ->prev;
  p_occ->next->parent = NULL;

  FUNC5 (r, l);

  FUNC1 (r);

  FUNC2 (rmost);
  rmost->depth = 0;
  rmost->min = 0;

  FUNC3 (et_occurrences, p_occ);

  /* Update the tree.  */
  if (father->son == t)
    father->son = t->right;
  if (father->son == t)
    father->son = NULL;
  else
    {
      t->left->right = t->right;
      t->right->left = t->left;
    }
  t->left = t->right = NULL;
  t->father = NULL;

#ifdef DEBUG_ET
  et_check_tree_sanity (rmost);
  record_path_before (rmost);

  et_check_tree_sanity (r);
  record_path_before (r);
#endif
}