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
 scalar_t__ INTEGER_CST ; 
 int /*<<< orphan*/  INTEGER_TYPE ; 
 int /*<<< orphan*/  MINUS_EXPR ; 
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  integer_minus_one_node ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int FUNC15 (char const*,char const*,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  unsigned_char_type_node ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC19 (tree arglist)
{
  tree arg1, arg2, len;
  const char *p1, *p2;

  if (!FUNC18 (arglist,
			 POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  arg1 = FUNC2 (arglist);
  arg2 = FUNC2 (FUNC0 (arglist));
  len = FUNC2 (FUNC0 (FUNC0 (arglist)));

  /* If the LEN parameter is zero, return zero.  */
  if (FUNC11 (len))
    return FUNC13 (integer_type_node, integer_zero_node,
			      arg1, arg2);

  /* If ARG1 and ARG2 are the same (and not volatile), return zero.  */
  if (FUNC14 (arg1, arg2, 0))
    return FUNC12 (integer_type_node, integer_zero_node, len);

  p1 = FUNC6 (arg1);
  p2 = FUNC6 (arg2);

  if (FUNC10 (len, 1) && p1 && p2)
    {
      const int i = FUNC15 (p1, p2, FUNC17 (len, 1));
      if (i > 0)
	return integer_one_node;
      else if (i < 0)
	return integer_minus_one_node;
      else
	return integer_zero_node;
    }

  /* If the second arg is "", and the length is greater than zero,
     return *(const unsigned char*)arg1.  */
  if (p2 && *p2 == '\0'
      && FUNC1 (len) == INTEGER_CST
      && FUNC16 (len) == 1)
    {
      tree cst_uchar_node = FUNC5 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC4 (cst_uchar_node, ptr_mode, true);

      return FUNC9 (integer_type_node,
			   FUNC3 (INDIRECT_REF, cst_uchar_node,
				   FUNC9 (cst_uchar_ptr_node,
						 arg1)));
    }

  /* If the first arg is "", and the length is greater than zero,
     return -*(const unsigned char*)arg2.  */
  if (p1 && *p1 == '\0'
      && FUNC1 (len) == INTEGER_CST
      && FUNC16 (len) == 1)
    {
      tree cst_uchar_node = FUNC5 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC4 (cst_uchar_node, ptr_mode, true);

      tree temp = FUNC9 (integer_type_node,
				FUNC3 (INDIRECT_REF, cst_uchar_node,
					FUNC9 (cst_uchar_ptr_node,
						      arg2)));
      return FUNC7 (NEGATE_EXPR, integer_type_node, temp);
    }

  /* If len parameter is one, return an expression corresponding to
     (*(const unsigned char*)arg1 - (const unsigned char*)arg2).  */
  if (FUNC10 (len, 1) && FUNC17 (len, 1) == 1)
    {
      tree cst_uchar_node = FUNC5 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC4 (cst_uchar_node, ptr_mode, true);

      tree ind1 = FUNC9 (integer_type_node,
				FUNC3 (INDIRECT_REF, cst_uchar_node,
					FUNC9 (cst_uchar_ptr_node,
						      arg1)));
      tree ind2 = FUNC9 (integer_type_node,
				FUNC3 (INDIRECT_REF, cst_uchar_node,
					FUNC9 (cst_uchar_ptr_node,
						      arg2)));
      return FUNC8 (MINUS_EXPR, integer_type_node, ind1, ind2);
    }

  return 0;
}