#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_3__ {char* (* invalid_arg_for_unprototyped_fn ) (scalar_t__,scalar_t__,scalar_t__) ;scalar_t__ (* promote_prototypes ) (scalar_t__) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ BLOCK_POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ COMPLEX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ENUMERAL_TYPE ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  OPT_Wconversion ; 
 scalar_t__ REAL_TYPE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 unsigned int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 scalar_t__ dfloat128_type_node ; 
 scalar_t__ dfloat32_type_node ; 
 scalar_t__ dfloat64_type_node ; 
 scalar_t__ double_type_node ; 
 int /*<<< orphan*/  FUNC16 (char const*,...) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ float_type_node ; 
 int /*<<< orphan*/  ic_argpass ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ integer_type_node ; 
 scalar_t__ FUNC18 (scalar_t__) ; 
 scalar_t__ FUNC19 () ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 scalar_t__ FUNC21 (scalar_t__) ; 
 char* FUNC22 (scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_2__ targetm ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ void_type_node ; 
 scalar_t__ warn_conversion ; 
 scalar_t__ warn_traditional ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int,scalar_t__,...) ; 

__attribute__((used)) static tree
FUNC25 (tree typelist, tree values, tree function, tree fundecl)
{
  tree typetail, valtail;
  tree result = NULL;
  int parmnum;
  tree selector;

  /* Change pointer to function to the function itself for
     diagnostics.  */
  if (FUNC5 (function) == ADDR_EXPR
      && FUNC5 (FUNC6 (function, 0)) == FUNCTION_DECL)
    function = FUNC6 (function, 0);

  /* Handle an ObjC selector specially for diagnostics.  */
  selector = FUNC19 ();

  /* Scan the given expressions and types, producing individual
     converted arguments and pushing them on RESULT in reverse order.  */

  for (valtail = values, typetail = typelist, parmnum = 0;
       valtail;
       valtail = FUNC4 (valtail), parmnum++)
    {
      tree type = typetail ? FUNC8 (typetail) : 0;
      tree val = FUNC8 (valtail);
      tree rname = function;
      int argnum = parmnum + 1;
      const char *invalid_func_diag;

      if (type == void_type_node)
	{
	   /* APPLE LOCAL begin radar 5732232 - blocks */
	   if (FUNC5 (FUNC7 (function)) == BLOCK_POINTER_TYPE)
	    {
	      FUNC16 ("too many arguments to block call");
	      break;
	    }
	   /* APPLE LOCAL end radar 5732232 - blocks */
	  /* APPLE LOCAL begin radar 4491608 */
	  FUNC16 ("too many arguments to function %qE", selector ? selector 
								: function);
	  /* APPLE LOCAL end radar 4491608 */
	  break;
	}

      if (selector && argnum > 2)
	{
	  rname = selector;
	  argnum -= 2;
	}

      FUNC3 (val);

      val = FUNC20 (val);

      if (type != 0)
	{
	  /* Formal parm type is specified by a function prototype.  */
	  tree parmval;

	  if (type == error_mark_node || !FUNC0 (type))
	    {
	      FUNC16 ("type of formal parameter %d is incomplete", parmnum + 1);
	      parmval = val;
	    }
	  else
	    {
	      /* Optionally warn about conversions that
		 differ from the default conversions.  */
	      if (warn_conversion || warn_traditional)
		{
		  unsigned int formal_prec = FUNC11 (type);

		  if (FUNC2 (type)
		      && FUNC5 (FUNC7 (val)) == REAL_TYPE)
		    FUNC24 (0, "passing argument %d of %qE as integer "
			     "rather than floating due to prototype",
			     argnum, rname);
		  if (FUNC2 (type)
		      && FUNC5 (FUNC7 (val)) == COMPLEX_TYPE)
		    FUNC24 (0, "passing argument %d of %qE as integer "
			     "rather than complex due to prototype",
			     argnum, rname);
		  else if (FUNC5 (type) == COMPLEX_TYPE
			   && FUNC5 (FUNC7 (val)) == REAL_TYPE)
		    FUNC24 (0, "passing argument %d of %qE as complex "
			     "rather than floating due to prototype",
			     argnum, rname);
		  else if (FUNC5 (type) == REAL_TYPE
			   && FUNC2 (FUNC7 (val)))
		    FUNC24 (0, "passing argument %d of %qE as floating "
			     "rather than integer due to prototype",
			     argnum, rname);
		  else if (FUNC5 (type) == COMPLEX_TYPE
			   && FUNC2 (FUNC7 (val)))
		    FUNC24 (0, "passing argument %d of %qE as complex "
			     "rather than integer due to prototype",
			     argnum, rname);
		  else if (FUNC5 (type) == REAL_TYPE
			   && FUNC5 (FUNC7 (val)) == COMPLEX_TYPE)
		    FUNC24 (0, "passing argument %d of %qE as floating "
			     "rather than complex due to prototype",
			     argnum, rname);
		  /* ??? At some point, messages should be written about
		     conversions between complex types, but that's too messy
		     to do now.  */
		  else if (FUNC5 (type) == REAL_TYPE
			   && FUNC5 (FUNC7 (val)) == REAL_TYPE)
		    {
		      /* Warn if any argument is passed as `float',
			 since without a prototype it would be `double'.  */
		      if (formal_prec == FUNC11 (float_type_node)
			  && type != dfloat32_type_node)
			FUNC24 (0, "passing argument %d of %qE as %<float%> "
				 "rather than %<double%> due to prototype",
				 argnum, rname);

		      /* Warn if mismatch between argument and prototype
			 for decimal float types.  Warn of conversions with
			 binary float types and of precision narrowing due to
			 prototype. */
 		      else if (type != FUNC7 (val)
			       && (type == dfloat32_type_node
				   || type == dfloat64_type_node
				   || type == dfloat128_type_node
				   || FUNC7 (val) == dfloat32_type_node
				   || FUNC7 (val) == dfloat64_type_node
				   || FUNC7 (val) == dfloat128_type_node)
			       && (formal_prec
				   <= FUNC11 (FUNC7 (val))
				   || (type == dfloat128_type_node
				       && (FUNC7 (val)
					   != dfloat64_type_node
					   && (FUNC7 (val)
					       != dfloat32_type_node)))
				   || (type == dfloat64_type_node
				       && (FUNC7 (val)
					   != dfloat32_type_node))))
			FUNC24 (0, "passing argument %d of %qE as %qT "
				 "rather than %qT due to prototype",
				 argnum, rname, type, FUNC7 (val));

		    }
		  /* Detect integer changing in width or signedness.
		     These warnings are only activated with
		     -Wconversion, not with -Wtraditional.  */
		  else if (warn_conversion && FUNC2 (type)
			   && FUNC2 (FUNC7 (val)))
		    {
		      tree would_have_been = FUNC15 (val);
		      tree type1 = FUNC7 (would_have_been);

		      if (FUNC5 (type) == ENUMERAL_TYPE
			  && (FUNC9 (type)
			      == FUNC9 (FUNC7 (val))))
			/* No warning if function asks for enum
			   and the actual arg is that enum type.  */
			;
		      else if (formal_prec != FUNC11 (type1))
			FUNC24 (OPT_Wconversion, "passing argument %d of %qE "
				 "with different width due to prototype",
				 argnum, rname);
		      else if (FUNC12 (type) == FUNC12 (type1))
			;
		      /* Don't complain if the formal parameter type
			 is an enum, because we can't tell now whether
			 the value was an enum--even the same enum.  */
		      else if (FUNC5 (type) == ENUMERAL_TYPE)
			;
		      else if (FUNC5 (val) == INTEGER_CST
			       && FUNC17 (val, type))
			/* Change in signedness doesn't matter
			   if a constant value is unaffected.  */
			;
		      /* If the value is extended from a narrower
			 unsigned type, it doesn't matter whether we
			 pass it as signed or unsigned; the value
			 certainly is the same either way.  */
		      else if (FUNC11 (FUNC7 (val)) < FUNC11 (type)
			       && FUNC12 (FUNC7 (val)))
			;
		      else if (FUNC12 (type))
			FUNC24 (OPT_Wconversion, "passing argument %d of %qE "
				 "as unsigned due to prototype",
				 argnum, rname);
		      else
			FUNC24 (OPT_Wconversion, "passing argument %d of %qE "
				 "as signed due to prototype", argnum, rname);
		    }
		}

	      parmval = FUNC14 (type, val, ic_argpass,
						fundecl, function,
						parmnum + 1);

	      if (targetm.calls.promote_prototypes (fundecl ? FUNC7 (fundecl) : 0)
		  && FUNC2 (type)
		  && (FUNC11 (type) < FUNC11 (integer_type_node)))
		parmval = FUNC15 (parmval);
	    }
	  result = FUNC23 (NULL_TREE, parmval, result);
	}
      else if (FUNC5 (FUNC7 (val)) == REAL_TYPE
	       && (FUNC11 (FUNC7 (val))
		   < FUNC11 (double_type_node))
	       && !FUNC1 (FUNC10 (FUNC7 (val))))
	/* Convert `float' to `double'.  */
	result = FUNC23 (NULL_TREE, FUNC13 (double_type_node, val), result);
      else if ((invalid_func_diag =
		targetm.calls.invalid_arg_for_unprototyped_fn (typelist, fundecl, val)))
	{
	  FUNC16 (invalid_func_diag, "");
	  return error_mark_node;
	}
      else
	/* Convert `short' and `char' to full-size `int'.  */
	result = FUNC23 (NULL_TREE, FUNC15 (val), result);

      if (typetail)
	typetail = FUNC4 (typetail);
    }

  if (typetail != 0 && FUNC8 (typetail) != void_type_node)
    {
      /* APPLE LOCAL begin radar 5732232 - blocks */
      if (FUNC5 (FUNC7 (function)) == BLOCK_POINTER_TYPE)
	 FUNC16 ("too few arguments to block %qE", function);
      else
	 FUNC16 ("too few arguments to function %qE", function);
      /* APPLE LOCAL end radar 5732232 - blocks */
      return error_mark_node;
    }

  return FUNC18 (result);
}