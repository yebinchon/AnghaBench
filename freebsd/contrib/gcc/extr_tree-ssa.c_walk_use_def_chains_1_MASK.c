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
typedef  int (* walk_use_def_chains_fn ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ;
typedef  int /*<<< orphan*/  tree ;
struct pointer_set_t {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PHI_NODE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SSA_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct pointer_set_t*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (tree var, walk_use_def_chains_fn fn, void *data,
		       struct pointer_set_t *visited, bool is_dfs)
{
  tree def_stmt;

  if (FUNC4 (visited, var))
    return false;

  def_stmt = FUNC2 (var);

  if (FUNC3 (def_stmt) != PHI_NODE)
    {
      /* If we reached the end of the use-def chain, call FN.  */
      return fn (var, def_stmt, data);
    }
  else
    {
      int i;

      /* When doing a breadth-first search, call FN before following the
	 use-def links for each argument.  */
      if (!is_dfs)
	for (i = 0; i < FUNC1 (def_stmt); i++)
	  if (fn (FUNC0 (def_stmt, i), def_stmt, data))
	    return true;

      /* Follow use-def links out of each PHI argument.  */
      for (i = 0; i < FUNC1 (def_stmt); i++)
	{
	  tree arg = FUNC0 (def_stmt, i);
	  if (FUNC3 (arg) == SSA_NAME
	      && FUNC5 (arg, fn, data, visited, is_dfs))
	    return true;
	}

      /* When doing a depth-first search, call FN after following the
	 use-def links for each argument.  */
      if (is_dfs)
	for (i = 0; i < FUNC1 (def_stmt); i++)
	  if (fn (FUNC0 (def_stmt, i), def_stmt, data))
	    return true;
    }
  
  return false;
}