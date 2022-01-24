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

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 

bool
FUNC6 (tree decl)
{
  while (1)
    {
      if (decl == NULL_TREE || decl == error_mark_node)
	return false;
      if (FUNC2 (decl) == NAMESPACE_DECL
	  && FUNC1 (decl) == NULL_TREE)
	return true;
      /* Classes and namespaces inside anonymous namespaces have
         TREE_PUBLIC == 0, so we can shortcut the search.  */
      else if (FUNC5 (decl))
	return (FUNC3 (FUNC4 (decl)) == 0);
      else if (FUNC2 (decl) == NAMESPACE_DECL)
	return (FUNC3 (decl) == 0);
      else
	decl = FUNC0 (decl);
    }
}