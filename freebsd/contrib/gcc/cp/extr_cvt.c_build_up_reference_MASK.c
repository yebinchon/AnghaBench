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
typedef  scalar_t__ DECL_INITIAL ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int DIRECT_BIND ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int LOOKUP_ONLYCONVERTING ; 
 int LOOKUP_PROTECT ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ REFERENCE_TYPE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  ba_check ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC17 (tree type, tree arg, int flags, tree decl)
{
  tree rval;
  tree argtype = FUNC2 (arg);
  tree target_type = FUNC2 (type);

  FUNC11 (FUNC1 (type) == REFERENCE_TYPE);

  if ((flags & DIRECT_BIND) && ! FUNC16 (arg))
    {
      /* Create a new temporary variable.  We can't just use a TARGET_EXPR
	 here because it needs to live as long as DECL.  */
      tree targ = arg;

      arg = FUNC15 (decl, FUNC2 (arg));

      /* Process the initializer for the declaration.  */
      DECL_INITIAL (arg) = targ;
      FUNC9 (arg, targ, /*init_const_expr_p=*/false, NULL_TREE,
		      LOOKUP_ONLYCONVERTING|DIRECT_BIND);
    }
  else if (!(flags & DIRECT_BIND) && ! FUNC14 (arg))
    return FUNC12 (arg);

  /* If we had a way to wrap this up, and say, if we ever needed its
     address, transform all occurrences of the register, into a memory
     reference we could win better.  */
  rval = FUNC7 (ADDR_EXPR, arg, 1);
  if (rval == error_mark_node)
    return error_mark_node;

  if ((flags & LOOKUP_PROTECT)
      && FUNC3 (argtype) != FUNC3 (target_type)
      && FUNC0 (argtype)
      && FUNC0 (target_type))
    {
      /* We go through lookup_base for the access control.  */
      tree binfo = FUNC13 (argtype, target_type, ba_check, NULL);
      if (binfo == error_mark_node)
	return error_mark_node;
      if (binfo == NULL_TREE)
	return FUNC10 (target_type, argtype);
      rval = FUNC4 (PLUS_EXPR, rval, binfo, 1);
    }
  else
    rval
      = FUNC8 (FUNC6 (target_type), rval);
  return FUNC5 (type, rval);
}