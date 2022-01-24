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
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC13 (tree scope, tree decl, tree binfo)
{
  tree befriending_classes;
  tree t;

  if (!scope)
    return 0;

  if (FUNC8 (scope) == FUNCTION_DECL
      || FUNC4 (scope))
    befriending_classes = FUNC1 (scope);
  else if (FUNC11 (scope))
    befriending_classes = FUNC0 (scope);
  else
    return 0;

  for (t = befriending_classes; t; t = FUNC7 (t))
    if (FUNC12 (decl, FUNC9 (t), binfo))
      return 1;

  /* Nested classes have the same access as their enclosing types, as
     per DR 45 (this is a change from the standard).  */
  if (FUNC11 (scope))
    for (t = FUNC10 (scope); t && FUNC11 (t); t = FUNC10 (t))
      if (FUNC12 (decl, t, binfo))
	return 1;

  if (FUNC8 (scope) == FUNCTION_DECL
      || FUNC4 (scope))
    {
      /* Perhaps this SCOPE is a member of a class which is a
	 friend.  */
      if (FUNC2 (scope)
	  && FUNC13 (FUNC3 (scope), decl, binfo))
	return 1;

      /* Or an instantiation of something which is a friend.  */
      if (FUNC5 (scope))
	{
	  int ret;
	  /* Increment processing_template_decl to make sure that
	     dependent_type_p works correctly.  */
	  ++processing_template_decl;
	  ret = FUNC13 (FUNC6 (scope), decl, binfo);
	  --processing_template_decl;
	  return ret;
	}
    }

  return 0;
}