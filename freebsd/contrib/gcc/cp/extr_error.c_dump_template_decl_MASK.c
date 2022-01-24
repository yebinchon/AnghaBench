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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  FUNCTION_TYPE 129 
 scalar_t__ FUNC3 (scalar_t__) ; 
#define  METHOD_TYPE 128 
 int FUNC4 (scalar_t__) ; 
 int TFF_CLASS_KEY_OR_ENUM ; 
 int TFF_DECL_SPECIFIERS ; 
 int TFF_TEMPLATE_HEADER ; 
 int TFF_TEMPLATE_NAME ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int) ; 
 int FUNC9 (scalar_t__) ; 
 scalar_t__ TYPE_DECL ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  cxx_pp ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21 (tree t, int flags)
{
  tree orig_parms = FUNC0 (t);
  tree parms;
  int i;

  if (flags & TFF_TEMPLATE_HEADER)
    {
      for (parms = orig_parms = FUNC15 (orig_parms);
	   parms;
	   parms = FUNC5 (parms))
	{
	  tree inner_parms = FUNC3 (parms);
	  int len = FUNC9 (inner_parms);

	  FUNC18 (cxx_pp, "template");
	  FUNC16 (cxx_pp);

	  /* If we've shown the template prefix, we'd better show the
	     parameters' and decl's type too.  */
	    flags |= TFF_DECL_SPECIFIERS;

	  for (i = 0; i < len; i++)
	    {
	      if (i)
		FUNC20 (cxx_pp);
	      FUNC12 (FUNC8 (inner_parms, i), flags);
	    }
	  FUNC17 (cxx_pp);
	  FUNC19 (cxx_pp);
	}
      FUNC15(orig_parms);

      if (FUNC2 (t))
	/* Say `template<arg> class TT' not just `template<arg> TT'.  */
	FUNC18 (cxx_pp, "class");
    }

  if (FUNC6 (FUNC1 (t)) == TYPE_DECL)
    FUNC13 (FUNC7 (t),
	       ((flags & ~TFF_CLASS_KEY_OR_ENUM) | TFF_TEMPLATE_NAME
		| (flags & TFF_DECL_SPECIFIERS ? TFF_CLASS_KEY_OR_ENUM : 0)));
  else if (FUNC6 (FUNC1 (t)) == VAR_DECL)
    FUNC10 (FUNC1 (t), flags | TFF_TEMPLATE_NAME);
  else
    {
      FUNC14 (FUNC7 (t));
      switch (FUNC4 (t))
	{
	case METHOD_TYPE:
	case FUNCTION_TYPE:
	  FUNC11 (t, flags | TFF_TEMPLATE_NAME);
	  break;
	default:
	  /* This case can occur with some invalid code.  */
	  FUNC13 (FUNC7 (t),
		     (flags & ~TFF_CLASS_KEY_OR_ENUM) | TFF_TEMPLATE_NAME
		     | (flags & TFF_DECL_SPECIFIERS
			? TFF_CLASS_KEY_OR_ENUM : 0));
	}
    }
}