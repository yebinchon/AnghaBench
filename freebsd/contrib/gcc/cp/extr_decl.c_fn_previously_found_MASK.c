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
 scalar_t__ NULL_TREE ; 
 scalar_t__ OVERLOAD ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (scalar_t__,scalar_t__) ; 
 scalar_t__ error_mark_node ; 

__attribute__((used)) static bool
FUNC10 (tree decl, tree olddecl)
{
  int types_match;

  if (olddecl == 0)
    return false;

  if (FUNC5 (olddecl) == OVERLOAD)
    {
      if (FUNC2 (olddecl) == NULL_TREE)
	olddecl = FUNC3 (olddecl);
      else
	{
	  tree match;
	  for (match = olddecl; match; match = FUNC4 (match))
	    {
	      if (FUNC10 (decl, FUNC3 (match)))
		return true;
	    }
	  return false;
	}
    }	  

  /* Don't warn about previously erroneous things that have the same
     name.  */
  if (FUNC6 (olddecl) == error_mark_node)
    return true;

  /* Internally defined things still need a prototype to escape the
     warning.  */
  if (FUNC0 (olddecl))
    return false;

  if (FUNC5 (olddecl) != FUNCTION_DECL)
    return false;

  /* These will match or error, don't also spew prototype warnings.  */
  if (FUNC1 (olddecl)
      && FUNC1 (decl))
    return true;

  /* These will match or error, don't also spew prototype warnings.  */
  if (FUNC8 (FUNC7 (FUNC6 (decl)),
		 FUNC7 (FUNC6 (olddecl))))
    return true;

  types_match = FUNC9 (decl, olddecl);
    
  if (types_match)
    return true;

  return false;
}