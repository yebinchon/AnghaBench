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
 int /*<<< orphan*/  OPT_Wformat ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 unsigned int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (char*,scalar_t__) ; 
 scalar_t__ null_node ; 
 scalar_t__ warn_strict_null_sentinel ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC8 (tree attrs, tree params, tree typelist)
{
  tree attr = FUNC6 ("sentinel", attrs);

  if (attr)
    {
      /* Skip over the named arguments.  */
      while (typelist && params)
      {
	typelist = FUNC1 (typelist);
	params = FUNC1 (params);
      }

      if (typelist || !params)
	FUNC7 (OPT_Wformat,
		 "not enough variable arguments to fit a sentinel");
      else
	{
	  tree sentinel, end;
	  unsigned pos = 0;

	  if (FUNC4 (attr))
	    {
	      tree p = FUNC4 (FUNC4 (attr));
	      pos = FUNC2 (p);
	    }

	  sentinel = end = params;

	  /* Advance `end' ahead of `sentinel' by `pos' positions.  */
	  while (pos > 0 && FUNC1 (end))
	    {
	      pos--;
	      end = FUNC1 (end);
	    }
	  if (pos > 0)
	    {
	      FUNC7 (OPT_Wformat,
		       "not enough variable arguments to fit a sentinel");
	      return;
	    }

	  /* Now advance both until we find the last parameter.  */
	  while (FUNC1 (end))
	    {
	      end = FUNC1 (end);
	      sentinel = FUNC1 (sentinel);
	    }

	  /* Validate the sentinel.  */
	  if ((!FUNC0 (FUNC3 (FUNC4 (sentinel)))
	       || !FUNC5 (FUNC4 (sentinel)))
	      /* Although __null (in C++) is only an integer we allow it
		 nevertheless, as we are guaranteed that it's exactly
		 as wide as a pointer, and we don't want to force
		 users to cast the NULL they have written there.
		 We warn with -Wstrict-null-sentinel, though.  */
	      && (warn_strict_null_sentinel
		  || null_node != FUNC4 (sentinel)))
	    FUNC7 (OPT_Wformat, "missing sentinel in function call");
	}
    }
}