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
 size_t BUILT_IN_MEMCPY ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* implicit_built_in_decls ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC13 (tree fndecl, tree arglist, tree slen)
{
  tree dest, src, len, fn;

  if (!FUNC12 (arglist,
			 POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = FUNC3 (arglist);
  src = FUNC3 (FUNC0 (arglist));
  len = FUNC3 (FUNC0 (FUNC0 (arglist)));

  /* If the LEN parameter is zero, return DEST.  */
  if (FUNC7 (len))
    return FUNC8 (FUNC2 (FUNC2 (fndecl)), dest, src);

  /* We can't compare slen with len as constants below if len is not a
     constant.  */
  if (len == 0 || FUNC1 (len) != INTEGER_CST)
    return 0;

  if (!slen)
    slen = FUNC5 (src, 1);

  /* Now, we must be passed a constant src ptr parameter.  */
  if (slen == 0 || FUNC1 (slen) != INTEGER_CST)
    return 0;

  slen = FUNC9 (PLUS_EXPR, slen, FUNC10 (1));

  /* We do not support simplification of this case, though we do
     support it when expanding trees into RTL.  */
  /* FIXME: generate a call to __builtin_memset.  */
  if (FUNC11 (slen, len))
    return 0;

  /* OK transform into builtin memcpy.  */
  fn = implicit_built_in_decls[BUILT_IN_MEMCPY];
  if (!fn)
    return 0;
  return FUNC6 (FUNC2 (FUNC2 (fndecl)),
		       FUNC4 (fn, arglist));
}