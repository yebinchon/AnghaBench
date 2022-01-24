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
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ UNKNOWN_TYPE ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

tree
FUNC6 (tree decl)
{
  tree type = FUNC3 (decl);

  /* Add this decl to the current binding level, but not if it comes
     from another scope, e.g. a static member variable.  TEM may equal
     DECL or it may be a previous decl of the same name.  */
  if (decl == error_mark_node
      || (FUNC2 (decl) != PARM_DECL
	  && FUNC0 (decl) != NULL_TREE
	  /* Definitions of namespace members outside their namespace are
	     possible.  */
	  && FUNC2 (FUNC0 (decl)) != NAMESPACE_DECL)
      || (FUNC2 (decl) == TEMPLATE_DECL && !FUNC4 ())
      || FUNC2 (type) == UNKNOWN_TYPE
      /* The declaration of a template specialization does not affect
	 the functions available for overload resolution, so we do not
	 call pushdecl.  */
      || (FUNC2 (decl) == FUNCTION_DECL
	  && FUNC1 (decl)))
    return decl;
  else
    return FUNC5 (decl);
}