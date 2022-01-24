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
typedef  int /*<<< orphan*/  walk_tree_fn ;
typedef  int /*<<< orphan*/  tree ;
struct pointer_set_t {int dummy; } ;

/* Variables and functions */
 struct pointer_set_t* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pointer_set_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*,struct pointer_set_t*) ; 

tree
FUNC3 (tree *tp, walk_tree_fn func, void *data)
{
  tree result;
  struct pointer_set_t *pset;

  pset = FUNC0 ();
  result = FUNC2 (tp, func, data, pset);
  FUNC1 (pset);
  return result;
}