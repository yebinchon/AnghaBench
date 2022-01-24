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
typedef  int /*<<< orphan*/  tree_fn_t ;
typedef  int /*<<< orphan*/  tree ;
struct pointer_set_t {int dummy; } ;
struct pair_fn_data {struct pointer_set_t* visited; void* data; int /*<<< orphan*/  fn; } ;

/* Variables and functions */
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  for_each_template_parm_r ; 
 struct pointer_set_t* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct pointer_set_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct pair_fn_data*,struct pointer_set_t*) ; 

__attribute__((used)) static int
FUNC3 (tree t, tree_fn_t fn, void* data,
			struct pointer_set_t *visited)
{
  struct pair_fn_data pfd;
  int result;

  /* Set up.  */
  pfd.fn = fn;
  pfd.data = data;

  /* Walk the tree.  (Conceptually, we would like to walk without
     duplicates, but for_each_template_parm_r recursively calls
     for_each_template_parm, so we would need to reorganize a fair
     bit to use walk_tree_without_duplicates, so we keep our own
     visited list.)  */
  if (visited)
    pfd.visited = visited;
  else
    pfd.visited = FUNC0 ();
  result = FUNC2 (&t,
		      for_each_template_parm_r,
		      &pfd,
		      pfd.visited) != NULL_TREE;

  /* Clean up.  */
  if (!visited)
    {
      FUNC1 (pfd.visited);
      pfd.visited = 0;
    }

  return result;
}