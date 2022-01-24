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
typedef  int /*<<< orphan*/  val ;
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  BUILT_IN_FPUTS 141 
#define  BUILT_IN_FPUTS_UNLOCKED 140 
 scalar_t__ BUILT_IN_MD ; 
#define  BUILT_IN_MEMCPY_CHK 139 
#define  BUILT_IN_MEMMOVE_CHK 138 
#define  BUILT_IN_MEMPCPY_CHK 137 
#define  BUILT_IN_MEMSET_CHK 136 
#define  BUILT_IN_SNPRINTF_CHK 135 
#define  BUILT_IN_STPCPY_CHK 134 
#define  BUILT_IN_STRCPY 133 
#define  BUILT_IN_STRCPY_CHK 132 
#define  BUILT_IN_STRLEN 131 
#define  BUILT_IN_STRNCPY 130 
#define  BUILT_IN_STRNCPY_CHK 129 
#define  BUILT_IN_VSNPRINTF_CHK 128 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__,scalar_t__,int,int) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 scalar_t__ FUNC22 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC25 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 (scalar_t__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC27 (tree stmt, tree fn)
{
  tree result, val[3];
  tree callee, arglist, a;
  int arg_mask, i, type;
  bitmap visited;
  bool ignore;

  ignore = FUNC6 (stmt) != MODIFY_EXPR;

  /* First try the generic builtin folder.  If that succeeds, return the
     result directly.  */
  callee = FUNC22 (fn);
  arglist = FUNC7 (fn, 1);
  result = FUNC11 (callee, arglist, ignore);
  if (result)
    {
      if (ignore)
	FUNC4 (result);
      return result;
    }

  /* Ignore MD builtins.  */
  if (FUNC2 (callee) == BUILT_IN_MD)
    return NULL_TREE;

  /* If the builtin could not be folded, and it has no argument list,
     we're done.  */
  if (!arglist)
    return NULL_TREE;

  /* Limit the work only for builtins we know how to simplify.  */
  switch (FUNC3 (callee))
    {
    case BUILT_IN_STRLEN:
    case BUILT_IN_FPUTS:
    case BUILT_IN_FPUTS_UNLOCKED:
      arg_mask = 1;
      type = 0;
      break;
    case BUILT_IN_STRCPY:
    case BUILT_IN_STRNCPY:
      arg_mask = 2;
      type = 0;
      break;
    case BUILT_IN_MEMCPY_CHK:
    case BUILT_IN_MEMPCPY_CHK:
    case BUILT_IN_MEMMOVE_CHK:
    case BUILT_IN_MEMSET_CHK:
    case BUILT_IN_STRNCPY_CHK:
      arg_mask = 4;
      type = 2;
      break;
    case BUILT_IN_STRCPY_CHK:
    case BUILT_IN_STPCPY_CHK:
      arg_mask = 2;
      type = 1;
      break;
    case BUILT_IN_SNPRINTF_CHK:
    case BUILT_IN_VSNPRINTF_CHK:
      arg_mask = 2;
      type = 2;
      break;
    default:
      return NULL_TREE;
    }

  /* Try to use the dataflow information gathered by the CCP process.  */
  visited = FUNC0 (NULL);

  FUNC26 (val, 0, sizeof (val));
  for (i = 0, a = arglist;
       arg_mask;
       i++, arg_mask >>= 1, a = FUNC5 (a))
    if (arg_mask & 1)
      {
	FUNC10 (visited);
	if (!FUNC23 (FUNC9 (a), &val[i], visited, type))
	  val[i] = NULL_TREE;
      }

  FUNC1 (visited);

  result = NULL_TREE;
  switch (FUNC3 (callee))
    {
    case BUILT_IN_STRLEN:
      if (val[0])
	{
	  tree new = FUNC19 (FUNC8 (fn), val[0]);

	  /* If the result is not a valid gimple value, or not a cast
	     of a valid gimple value, then we can not use the result.  */
	  if (FUNC25 (new)
	      || (FUNC24 (new)
		  && FUNC25 (FUNC7 (new, 0))))
	    return new;
	}
      break;

    case BUILT_IN_STRCPY:
      if (val[1] && FUNC25 (val[1]))
	result = FUNC15 (callee, arglist, val[1]);
      break;

    case BUILT_IN_STRNCPY:
      if (val[1] && FUNC25 (val[1]))
	result = FUNC16 (callee, arglist, val[1]);
      break;

    case BUILT_IN_FPUTS:
      result = FUNC12 (arglist,
				   FUNC6 (stmt) != MODIFY_EXPR, 0,
				   val[0]);
      break;

    case BUILT_IN_FPUTS_UNLOCKED:
      result = FUNC12 (arglist,
				   FUNC6 (stmt) != MODIFY_EXPR, 1,
				   val[0]);
      break;

    case BUILT_IN_MEMCPY_CHK:
    case BUILT_IN_MEMPCPY_CHK:
    case BUILT_IN_MEMMOVE_CHK:
    case BUILT_IN_MEMSET_CHK:
      if (val[2] && FUNC25 (val[2]))
	result = FUNC13 (callee, arglist, val[2], ignore,
					  FUNC3 (callee));
      break;

    case BUILT_IN_STRCPY_CHK:
    case BUILT_IN_STPCPY_CHK:
      if (val[1] && FUNC25 (val[1]))
	result = FUNC18 (callee, arglist, val[1], ignore,
					  FUNC3 (callee));
      break;

    case BUILT_IN_STRNCPY_CHK:
      if (val[2] && FUNC25 (val[2]))
	result = FUNC17 (arglist, val[2]);
      break;

    case BUILT_IN_SNPRINTF_CHK:
    case BUILT_IN_VSNPRINTF_CHK:
      if (val[1] && FUNC25 (val[1]))
	result = FUNC14 (arglist, val[1],
					    FUNC3 (callee));
      break;

    default:
      FUNC21 ();
    }

  if (result && ignore)
    result = FUNC20 (result);
  return result;
}