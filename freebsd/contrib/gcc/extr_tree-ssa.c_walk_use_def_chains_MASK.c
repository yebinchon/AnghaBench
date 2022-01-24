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
typedef  int /*<<< orphan*/  (* walk_use_def_chains_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  tree ;
struct pointer_set_t {int dummy; } ;

/* Variables and functions */
 scalar_t__ PHI_NODE ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct pointer_set_t* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct pointer_set_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*),void*,struct pointer_set_t*,int) ; 

void
FUNC7 (tree var, walk_use_def_chains_fn fn, void *data,
                     bool is_dfs)
{
  tree def_stmt;

  FUNC2 (FUNC1 (var) == SSA_NAME);

  def_stmt = FUNC0 (var);

  /* We only need to recurse if the reaching definition comes from a PHI
     node.  */
  if (FUNC1 (def_stmt) != PHI_NODE)
    (*fn) (var, def_stmt, data);
  else
    {
      struct pointer_set_t *visited = FUNC3 ();
      FUNC6 (var, fn, data, visited, is_dfs);
      FUNC4 (visited);
    }
}