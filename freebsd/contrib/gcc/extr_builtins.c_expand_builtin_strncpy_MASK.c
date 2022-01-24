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
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BIGGEST_ALIGNMENT ; 
 scalar_t__ COMPOUND_EXPR ; 
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_strncpy_read_str ; 
 char* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,scalar_t__) ; 
 unsigned int FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  ptr_mode ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC22 (tree exp, rtx target, enum machine_mode mode)
{
  tree fndecl = FUNC12 (exp);
  tree arglist = FUNC2 (exp, 1);
  if (FUNC21 (arglist,
			POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    {
      tree slen = FUNC6 (FUNC3 (FUNC0 (arglist)), 1);
      tree len = FUNC3 (FUNC0 (FUNC0 (arglist)));
      tree result = FUNC10 (fndecl, arglist, slen);

      if (result)
	{
	  while (FUNC1 (result) == COMPOUND_EXPR)
	    {
	      FUNC9 (FUNC2 (result, 0), const0_rtx, VOIDmode,
			   EXPAND_NORMAL);
	      result = FUNC2 (result, 1);
	    }
	  return FUNC9 (result, target, mode, EXPAND_NORMAL);
	}

      /* We must be passed a constant len and src parameter.  */
      if (!FUNC15 (len, 1) || !slen || !FUNC15 (slen, 1))
	return 0;

      slen = FUNC16 (PLUS_EXPR, slen, FUNC17 (1));

      /* We're required to pad with trailing zeros if the requested
	 len is greater than strlen(s2)+1.  In that case try to
	 use store_by_pieces, if it fails, punt.  */
      if (FUNC19 (slen, len))
	{
	  tree dest = FUNC3 (arglist);
	  unsigned int dest_align
	    = FUNC14 (dest, BIGGEST_ALIGNMENT);
	  const char *p = FUNC5 (FUNC3 (FUNC0 (arglist)));
	  rtx dest_mem;

	  if (!p || dest_align == 0 || !FUNC15 (len, 1)
	      || !FUNC7 (FUNC20 (len, 1),
				       builtin_strncpy_read_str,
				       (void *) p, dest_align))
	    return 0;

	  dest_mem = FUNC13 (dest, len);
	  FUNC18 (dest_mem, FUNC20 (len, 1),
			   builtin_strncpy_read_str,
			   (void *) p, dest_align, 0);
	  dest_mem = FUNC11 (FUNC4 (dest_mem, 0), NULL_RTX);
	  dest_mem = FUNC8 (ptr_mode, dest_mem);
	  return dest_mem;
	}
    }
  return 0;
}