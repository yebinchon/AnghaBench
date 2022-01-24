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
typedef  scalar_t__ tree ;
struct cgraph_node {scalar_t__ decl; struct cgraph_node* next_nested; struct cgraph_node* nested; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct cgraph_node* FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static bool
FUNC5 (tree fndecl, tree orig_fndecl)
{
  struct cgraph_node *cgn = FUNC3 (fndecl);
  tree arg;

  for (cgn = cgn->nested; cgn ; cgn = cgn->next_nested)
    {
      for (arg = FUNC0 (cgn->decl); arg; arg = FUNC1 (arg))
	if (FUNC4 (FUNC2 (arg), orig_fndecl))
	  return true;

      if (FUNC5 (cgn->decl, orig_fndecl))
	return true;
    }

  return false;
}