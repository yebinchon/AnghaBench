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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool
FUNC11 (tree basetype, tree name)
{
  /* Just accept something we've already complained about.  */
  if (name == error_mark_node)
    return true;

  if (FUNC2 (name) == TYPE_DECL)
    name = FUNC3 (name);
  else if (FUNC6 (name))
    /* OK */;
  else if (FUNC2 (name) == IDENTIFIER_NODE)
    {
      if ((FUNC1 (basetype) && name == FUNC7 (basetype))
	  || (FUNC2 (basetype) == ENUMERAL_TYPE
	      && name == FUNC4 (basetype)))
	return true;
      else
	name = FUNC9 (name);
    }
  else
    {
      /* In the case of:

	 template <class T> struct S { ~S(); };
	 int i;
	 i.~S();

	 NAME will be a class template.  */
      FUNC8 (FUNC0 (name));
      return false;
    }

  if (!name)
    return false;
  return FUNC10 (FUNC5 (basetype), FUNC5 (name));
}