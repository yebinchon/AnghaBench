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
typedef  int tsubst_flags_t ;
typedef  char* tree ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 
 scalar_t__ FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,...) ; 
 char* FUNC8 (char*,int) ; 
 int tf_error ; 
 scalar_t__ FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC10 (tree tmpl, tree args, tsubst_flags_t complain)
{
  int ix, len = FUNC0 (tmpl);
  bool result = false;

  for (ix = 0; ix != len; ix++)
    {
      tree t = FUNC4 (args, ix);

      if (FUNC6 (t))
	{
	  /* [basic.link]: A name with no linkage (notably, the name
	     of a class or enumeration declared in a local scope)
	     shall not be used to declare an entity with linkage.
	     This implies that names with no linkage cannot be used as
	     template arguments.  */
	  tree nt = FUNC8 (t, /*relaxed_p=*/false);

	  if (nt)
	    {
	      /* DR 488 makes use of a type with no linkage cause
		 type deduction to fail.  */
	      if (complain & tf_error)
		{
		  if (FUNC5 (nt))
		    FUNC7 ("%qT is/uses anonymous type", t);
		  else
		    FUNC7 ("template argument for %qD uses local type %qT",
			   tmpl, t);
		}
	      result = true;
	    }
	  /* In order to avoid all sorts of complications, we do not
	     allow variably-modified types as template arguments.  */
	  else if (FUNC9 (t, NULL_TREE))
	    {
	      if (complain & tf_error)
		FUNC7 ("%qT is a variably modified type", t);
	      result = true;
	    }
	}
      /* A non-type argument of integral or enumerated type must be a
	 constant.  */
      else if (FUNC3 (t)
	       && FUNC1 (FUNC3 (t))
	       && !FUNC2 (t))
	{
	  if (complain & tf_error)
	    FUNC7 ("integral expression %qE is not constant", t);
	  result = true;
	}
    }
  if (result && (complain & tf_error))
    FUNC7 ("  trying to instantiate %qD", tmpl);
  return result;
}