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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ CONSTRUCTOR ; 
 scalar_t__ CONST_DECL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  processing_template_decl ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC15 (tree decl, bool integral_p)
{
  while (FUNC8 (decl) == CONST_DECL
	 || (integral_p
	     ? FUNC6 (decl)
	     : (FUNC8 (decl) == VAR_DECL
		&& FUNC2 (FUNC10 (decl)))))
    {
      tree init;
      /* Static data members in template classes may have
	 non-dependent initializers.  References to such non-static
	 data members are not value-dependent, so we must retrieve the
	 initializer here.  The DECL_INITIAL will have the right type,
	 but will not have been folded because that would prevent us
	 from performing all appropriate semantic checks at
	 instantiation time.  */
      if (FUNC3 (decl)
	  && FUNC0 (FUNC4 (decl))
	  && FUNC14 (FUNC1
				  (FUNC4 (decl))))
	{
	  ++processing_template_decl;
	  init = FUNC11 (FUNC5 (decl));
	  --processing_template_decl;
	}
      else
	{
	  /* If DECL is a static data member in a template
	     specialization, we must instantiate it here.  The
	     initializer for the static data member is not processed
	     until needed; we need it now.  */
	  FUNC12 (decl);
	  init = FUNC5 (decl);
	}
      if (init == error_mark_node)
	return decl;
      if (!init
	  || !FUNC10 (init)
	  || (integral_p
	      ? !FUNC7 (FUNC10 (init))
	      : (!FUNC9 (init)
		 /* Do not return an aggregate constant (of which
		    string literals are a special case), as we do not
		    want to make inadvertent copies of such entities,
		    and we must be sure that their addresses are the
		    same everywhere.  */
		 || FUNC8 (init) == CONSTRUCTOR
		 || FUNC8 (init) == STRING_CST)))
	break;
      decl = FUNC13 (init);
    }
  return decl;
}