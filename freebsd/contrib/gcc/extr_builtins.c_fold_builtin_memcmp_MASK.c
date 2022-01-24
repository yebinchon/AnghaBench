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
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  integer_minus_one_node ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 scalar_t__ FUNC15 (char const*) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  unsigned_char_type_node ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC18 (tree arglist)
{
  tree arg1, arg2, len;
  const char *p1, *p2;

  if (!FUNC17 (arglist,
			 POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  arg1 = FUNC1 (arglist);
  arg2 = FUNC1 (FUNC0 (arglist));
  len = FUNC1 (FUNC0 (FUNC0 (arglist)));

  /* If the LEN parameter is zero, return zero.  */
  if (FUNC10 (len))
    return FUNC13 (integer_type_node, integer_zero_node,
			      arg1, arg2);

  /* If ARG1 and ARG2 are the same (and not volatile), return zero.  */
  if (FUNC14 (arg1, arg2, 0))
    return FUNC12 (integer_type_node, integer_zero_node, len);

  p1 = FUNC5 (arg1);
  p2 = FUNC5 (arg2);

  /* If all arguments are constant, and the value of len is not greater
     than the lengths of arg1 and arg2, evaluate at compile-time.  */
  if (FUNC9 (len, 1) && p1 && p2
      && FUNC6 (len, FUNC15 (p1) + 1) <= 0
      && FUNC6 (len, FUNC15 (p2) + 1) <= 0)
    {
      const int r = FUNC11 (p1, p2, FUNC16 (len, 1));

      if (r > 0)
	return integer_one_node;
      else if (r < 0)
	return integer_minus_one_node;
      else
	return integer_zero_node;
    }

  /* If len parameter is one, return an expression corresponding to
     (*(const unsigned char*)arg1 - (const unsigned char*)arg2).  */
  if (FUNC9 (len, 1) && FUNC16 (len, 1) == 1)
    {
      tree cst_uchar_node = FUNC4 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC3 (cst_uchar_node, ptr_mode, true);

      tree ind1 = FUNC8 (integer_type_node,
				FUNC2 (INDIRECT_REF, cst_uchar_node,
					FUNC8 (cst_uchar_ptr_node,
						      arg1)));
      tree ind2 = FUNC8 (integer_type_node,
				FUNC2 (INDIRECT_REF, cst_uchar_node,
					FUNC8 (cst_uchar_ptr_node,
						      arg2)));
      return FUNC7 (MINUS_EXPR, integer_type_node, ind1, ind2);
    }

  return 0;
}