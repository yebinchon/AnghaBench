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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 

tree 
FUNC17 (unsigned var,
	     tree chrec, 
	     tree x)
{
  tree type = FUNC11 (chrec);
  tree res = chrec_dont_know;

  if (FUNC4 (chrec)
      || FUNC4 (x)

      /* When the symbols are defined in an outer loop, it is possible
	 to symbolically compute the apply, since the symbols are
	 constants with respect to the varying loop.  */
      || FUNC6 (chrec, var))
    return chrec_dont_know;
 
  if (dump_file && (dump_flags & TDF_DETAILS))
    FUNC13 (dump_file, "(chrec_apply \n");

  if (FUNC3 (x) == INTEGER_CST && FUNC2 (type))
    x = FUNC5 (type, x);

  if (FUNC12 (chrec))
    {
      /* "{a, +, b} (x)"  ->  "a + b*x".  */
      x = FUNC7 (type, x, NULL_TREE);
      res = FUNC9 (type, FUNC1 (chrec), x);
      if (!FUNC14 (FUNC0 (chrec)))
	res = FUNC10 (type, FUNC0 (chrec), res);
    }
  
  else if (FUNC3 (chrec) != POLYNOMIAL_CHREC)
    res = chrec;
  
  else if (FUNC3 (x) == INTEGER_CST
	   && FUNC16 (x) == 1)
    /* testsuite/.../ssa-chrec-38.c.  */
    res = FUNC8 (var, chrec, x, 0);
  else
    res = chrec_dont_know;
  
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC13 (dump_file, "  (varying_loop = %d\n", var);
      FUNC13 (dump_file, ")\n  (chrec = ");
      FUNC15 (dump_file, chrec, 0);
      FUNC13 (dump_file, ")\n  (x = ");
      FUNC15 (dump_file, x, 0);
      FUNC13 (dump_file, ")\n  (res = ");
      FUNC15 (dump_file, res, 0);
      FUNC13 (dump_file, "))\n");
    }
  
  return res;
}