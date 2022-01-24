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
 size_t BUILT_IN_FPUTC ; 
 size_t BUILT_IN_FPUTC_UNLOCKED ; 
 size_t BUILT_IN_FWRITE ; 
 size_t BUILT_IN_FWRITE_UNLOCKED ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__* built_in_decls ; 
 char* FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__* implicit_built_in_decls ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  optimize_size ; 
 scalar_t__ size_one_node ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC13 (tree arglist, bool ignore, bool unlocked, tree len)
{
  tree fn;
  /* If we're using an unlocked function, assume the other unlocked
     functions exist explicitly.  */
  tree const fn_fputc = unlocked ? built_in_decls[BUILT_IN_FPUTC_UNLOCKED]
    : implicit_built_in_decls[BUILT_IN_FPUTC];
  tree const fn_fwrite = unlocked ? built_in_decls[BUILT_IN_FWRITE_UNLOCKED]
    : implicit_built_in_decls[BUILT_IN_FWRITE];

  /* If the return value is used, don't do the transformation.  */
  if (!ignore)
    return 0;

  /* Verify the arguments in the original call.  */
  if (!FUNC12 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  if (! len)
    len = FUNC7 (FUNC2 (arglist), 0);

  /* Get the length of the string passed to fputs.  If the length
     can't be determined, punt.  */
  if (!len
      || FUNC1 (len) != INTEGER_CST)
    return 0;

  switch (FUNC8 (len, 1))
    {
    case -1: /* length is 0, delete the call entirely .  */
      return FUNC10 (integer_type_node, integer_zero_node,
			       FUNC2 (FUNC0 (arglist)));

    case 0: /* length is 1, call fputc.  */
      {
	const char *p = FUNC6 (FUNC2 (arglist));

	if (p != NULL)
	  {
	    /* New argument list transforming fputs(string, stream) to
	       fputc(string[0], stream).  */
	    arglist = FUNC5 (NULL_TREE,
				       FUNC2 (FUNC0 (arglist)));
	    arglist = FUNC11 (NULL_TREE,
				 FUNC4 (NULL_TREE, p[0]),
				 arglist);
	    fn = fn_fputc;
	    break;
	  }
      }
      /* FALLTHROUGH */
    case 1: /* length is greater than 1, call fwrite.  */
      {
	tree string_arg;

	/* If optimizing for size keep fputs.  */
	if (optimize_size)
	  return 0;
	string_arg = FUNC2 (arglist);
	/* New argument list transforming fputs(string, stream) to
	   fwrite(string, 1, len, stream).  */
	arglist = FUNC5 (NULL_TREE,
				   FUNC2 (FUNC0 (arglist)));
	arglist = FUNC11 (NULL_TREE, len, arglist);
	arglist = FUNC11 (NULL_TREE, size_one_node, arglist);
	arglist = FUNC11 (NULL_TREE, string_arg, arglist);
	fn = fn_fwrite;
	break;
      }
    default:
      FUNC9 ();
    }

  /* If the replacement _DECL isn't initialized, don't do the
     transformation.  */
  if (!fn)
    return 0;

  /* These optimizations are only performed when the result is ignored,
     hence there's no need to cast the result to integer_type_node.  */
  return FUNC3 (fn, arglist);
}