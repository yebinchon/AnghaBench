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
typedef  int const unification_kind_t ;
typedef  scalar_t__ tree ;

/* Variables and functions */
#define  DEDUCE_CALL 130 
#define  DEDUCE_CONV 129 
#define  DEDUCE_EXACT 128 
 scalar_t__ NULL_TREE ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ TREE_VEC ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int UNIFY_ALLOW_DERIVED ; 
 int UNIFY_ALLOW_LESS_CV_QUAL ; 
 int UNIFY_ALLOW_MORE_CV_QUAL ; 
 int UNIFY_ALLOW_NONE ; 
 int UNIFY_ALLOW_OUTER_LEVEL ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (int const,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int const,int) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ unknown_type_node ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ void_list_node ; 

__attribute__((used)) static int
FUNC18 (tree tparms,
		       tree targs,
		       tree xparms,
		       tree xargs,
		       int subr,
		       unification_kind_t strict,
		       int flags)
{
  tree parm, arg;
  int i;
  int ntparms = FUNC6 (tparms);
  int sub_strict;
  int saw_undeduced = 0;
  tree parms, args;

  FUNC9 (FUNC1 (tparms) == TREE_VEC);
  FUNC9 (xparms == NULL_TREE || FUNC1 (xparms) == TREE_LIST);
  FUNC9 (!xargs || FUNC1 (xargs) == TREE_LIST);
  FUNC9 (ntparms > 0);

  switch (strict)
    {
    case DEDUCE_CALL:
      sub_strict = (UNIFY_ALLOW_OUTER_LEVEL | UNIFY_ALLOW_MORE_CV_QUAL
		    | UNIFY_ALLOW_DERIVED);
      break;

    case DEDUCE_CONV:
      sub_strict = UNIFY_ALLOW_LESS_CV_QUAL;
      break;

    case DEDUCE_EXACT:
      sub_strict = UNIFY_ALLOW_NONE;
      break;

    default:
      FUNC10 ();
    }

 again:
  parms = xparms;
  args = xargs;

  while (parms && parms != void_list_node
	 && args && args != void_list_node)
    {
      parm = FUNC4 (parms);
      parms = FUNC0 (parms);
      arg = FUNC4 (args);
      args = FUNC0 (args);

      if (arg == error_mark_node)
	return 1;
      if (arg == unknown_type_node)
	/* We can't deduce anything from this, but we might get all the
	   template args from other function args.  */
	continue;

      /* Conversions will be performed on a function argument that
	 corresponds with a function parameter that contains only
	 non-deducible template parameters and explicitly specified
	 template parameters.  */
      if (!FUNC17 (parm))
	{
	  tree type;

	  if (!FUNC7 (arg))
	    type = FUNC3 (arg);
	  else
	    type = arg;

	  if (FUNC13 (parm, type))
	    continue;
	  if (strict != DEDUCE_EXACT
	      && FUNC8 (parm, type, FUNC7 (arg) ? NULL_TREE : arg,
				  flags))
	    continue;

	  return 1;
	}

      if (!FUNC7 (arg))
	{
	  FUNC9 (FUNC3 (arg) != NULL_TREE);
	  if (FUNC14 (arg))
	    {
	      /* [temp.deduct.type] 

	         A template-argument can be deduced from a pointer to
		 function or pointer to member function argument if
		 the set of overloaded functions does not contain
		 function templates and at most one of a set of
		 overloaded functions provides a unique match.  */
	      if (FUNC12
		  (tparms, targs, parm, arg, strict, sub_strict))
		continue;

	      return 1;
	    }
	  arg = FUNC16 (arg);
	  if (arg == error_mark_node)
	    return 1;
	}

      {
	int arg_strict = sub_strict;

	if (!subr)
	  arg_strict |= FUNC11 (strict, &parm, &arg);

	if (FUNC15 (tparms, targs, parm, arg, arg_strict))
	  return 1;
      }
    }

  /* Fail if we've reached the end of the parm list, and more args
     are present, and the parm list isn't variadic.  */
  if (args && args != void_list_node && parms == void_list_node)
    return 1;
  /* Fail if parms are left and they don't have default values.  */
  if (parms && parms != void_list_node
      && FUNC2 (parms) == NULL_TREE)
    return 1;

  if (!subr)
    for (i = 0; i < ntparms; i++)
      if (!FUNC5 (targs, i))
	{
	  tree tparm;

          if (FUNC5 (tparms, i) == error_mark_node)
            continue;

          tparm = FUNC4 (FUNC5 (tparms, i));

	  /* If this is an undeduced nontype parameter that depends on
	     a type parameter, try another pass; its type may have been
	     deduced from a later argument than the one from which
	     this parameter can be deduced.  */
	  if (FUNC1 (tparm) == PARM_DECL
	      && FUNC17 (FUNC3 (tparm))
	      && !saw_undeduced++)
	    goto again;

	  return 2;
	}

  return 0;
}