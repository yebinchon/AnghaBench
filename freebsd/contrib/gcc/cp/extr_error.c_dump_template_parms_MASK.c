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
 scalar_t__ NULL_TREE ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_TEMPLATE_NAME ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14 (tree info, int primary, int flags)
{
  tree args = info ? FUNC1 (info) : NULL_TREE;

  if (primary && flags & TFF_TEMPLATE_NAME)
    return;
  flags &= ~(TFF_CLASS_KEY_OR_ENUM | TFF_TEMPLATE_NAME);
  FUNC10 (cxx_pp);

  /* Be careful only to print things when we have them, so as not
	 to crash producing error messages.  */
  if (args && !primary)
    {
      int len, ix;

      if (FUNC3 (args))
	args = FUNC6 (args, FUNC7 (args) - 1);

      len = FUNC7 (args);

      for (ix = 0; ix != len; ix++)
	{
	  tree arg = FUNC6 (args, ix);

	  if (ix)
	    FUNC13 (cxx_pp);

	  if (!arg)
	    FUNC12 (cxx_pp, "<template parameter error>");
	  else
	    FUNC9 (arg, flags);
	}
    }
  else if (primary)
    {
      tree tpl = FUNC2 (info);
      tree parms = FUNC0 (tpl);
      int len, ix;

      parms = FUNC4 (parms) == TREE_LIST ? FUNC5 (parms) : NULL_TREE;
      len = parms ? FUNC7 (parms) : 0;

      for (ix = 0; ix != len; ix++)
	{
	  tree parm;

          if (FUNC6 (parms, ix) == error_mark_node)
            {
              FUNC12 (cxx_pp, "<template parameter error>");
              continue;
            }

          parm = FUNC5 (FUNC6 (parms, ix));

	  if (ix)
	    FUNC13 (cxx_pp);

	  FUNC8 (parm, flags & ~TFF_DECL_SPECIFIERS);
	}
    }
  FUNC11 (cxx_pp);
}