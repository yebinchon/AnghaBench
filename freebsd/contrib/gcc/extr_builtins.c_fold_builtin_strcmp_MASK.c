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
 int /*<<< orphan*/  NEGATE_EXPR ; 
 int /*<<< orphan*/  POINTER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOID_TYPE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_minus_one_node ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ptr_mode ; 
 int FUNC9 (char const*,char const*) ; 
 int /*<<< orphan*/  unsigned_char_type_node ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC11 (tree arglist)
{
  tree arg1, arg2;
  const char *p1, *p2;

  if (!FUNC10 (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  arg1 = FUNC1 (arglist);
  arg2 = FUNC1 (FUNC0 (arglist));

  /* If ARG1 and ARG2 are the same (and not volatile), return zero.  */
  if (FUNC8 (arg1, arg2, 0))
    return integer_zero_node;

  p1 = FUNC5 (arg1);
  p2 = FUNC5 (arg2);

  if (p1 && p2)
    {
      const int i = FUNC9 (p1, p2);
      if (i < 0)
	return integer_minus_one_node;
      else if (i > 0)
	return integer_one_node;
      else
	return integer_zero_node;
    }

  /* If the second arg is "", return *(const unsigned char*)arg1.  */
  if (p2 && *p2 == '\0')
    {
      tree cst_uchar_node = FUNC4 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC3 (cst_uchar_node, ptr_mode, true);

      return FUNC7 (integer_type_node,
			   FUNC2 (INDIRECT_REF, cst_uchar_node,
				   FUNC7 (cst_uchar_ptr_node,
						 arg1)));
    }

  /* If the first arg is "", return -*(const unsigned char*)arg2.  */
  if (p1 && *p1 == '\0')
    {
      tree cst_uchar_node = FUNC4 (unsigned_char_type_node, 1, 0);
      tree cst_uchar_ptr_node
	= FUNC3 (cst_uchar_node, ptr_mode, true);

      tree temp = FUNC7 (integer_type_node,
				FUNC2 (INDIRECT_REF, cst_uchar_node,
					FUNC7 (cst_uchar_ptr_node,
						      arg2)));
      return FUNC6 (NEGATE_EXPR, integer_type_node, temp);
    }

  return 0;
}