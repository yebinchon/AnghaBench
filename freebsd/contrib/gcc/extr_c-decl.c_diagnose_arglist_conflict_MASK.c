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
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 scalar_t__ void_type_node ; 

__attribute__((used)) static void
FUNC10 (tree newdecl, tree olddecl,
			   tree newtype, tree oldtype)
{
  tree t;

  if (FUNC2 (olddecl) != FUNCTION_DECL
      || !FUNC8 (FUNC3 (oldtype), FUNC3 (newtype))
      || !((FUNC5 (oldtype) == 0 && FUNC0 (olddecl) == 0)
	   ||
	   (FUNC5 (newtype) == 0 && FUNC0 (newdecl) == 0)))
    return;

  t = FUNC5 (oldtype);
  if (t == 0)
    t = FUNC5 (newtype);
  for (; t; t = FUNC1 (t))
    {
      tree type = FUNC4 (t);

      if (FUNC1 (t) == 0
	  && FUNC6 (type) != void_type_node)
	{
	  FUNC9 ("a parameter list with an ellipsis can%'t match "
		  "an empty parameter name list declaration");
	  break;
	}

      if (FUNC7 (type) != type)
	{
	  FUNC9 ("an argument type that has a default promotion can%'t match "
		  "an empty parameter name list declaration");
	  break;
	}
    }
}