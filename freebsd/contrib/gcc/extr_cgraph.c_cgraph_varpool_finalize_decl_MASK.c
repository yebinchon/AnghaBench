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
typedef  int /*<<< orphan*/  tree ;
struct cgraph_varpool_node {int finalized; scalar_t__ needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ cgraph_global_info_ready ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cgraph_varpool_node*) ; 
 int /*<<< orphan*/  FUNC5 (struct cgraph_varpool_node*) ; 
 struct cgraph_varpool_node* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct cgraph_varpool_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_openmp ; 
 int /*<<< orphan*/  flag_unit_at_a_time ; 

void
FUNC8 (tree decl)
{
  struct cgraph_varpool_node *node = FUNC6 (decl);

  /* The first declaration of a variable that comes through this function
     decides whether it is global (in C, has external linkage)
     or local (in C, has internal linkage).  So do nothing more
     if this function has already run.  */
  if (node->finalized)
    {
      if (cgraph_global_info_ready || (!flag_unit_at_a_time && !flag_openmp))
	FUNC3 ();
      return;
    }
  if (node->needed)
    FUNC4 (node);
  node->finalized = true;

  if (FUNC7 (node, decl))
    FUNC5 (node);
  /* Since we reclaim unreachable nodes at the end of every language
     level unit, we need to be conservative about possible entry points
     there.  */
  else if (FUNC2 (decl) && !FUNC0 (decl) && !FUNC1 (decl))
    FUNC5 (node);
  if (cgraph_global_info_ready || (!flag_unit_at_a_time && !flag_openmp))
    FUNC3 ();
}