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
struct c_expr {int original_code; int /*<<< orphan*/  value; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int EQ_EXPR ; 
 scalar_t__ ERROR_MARK ; 
 int NE_EXPR ; 
 int /*<<< orphan*/  OPT_Waddress ; 
 int STRING_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ tcc_comparison ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 scalar_t__ warn_parentheses ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

struct c_expr
FUNC8 (enum tree_code code, struct c_expr arg1,
			struct c_expr arg2)
{
  struct c_expr result;

  enum tree_code code1 = arg1.original_code;
  enum tree_code code2 = arg2.original_code;

  result.value = FUNC3 (code, arg1.value, arg2.value, 1);
  result.original_code = code;

  if (FUNC0 (result.value) == ERROR_MARK)
    return result;

  /* Check for cases such as x+y<<z which users are likely
     to misinterpret.  */
  if (warn_parentheses)
    FUNC6 (code, code1, code2);

  /* Warn about comparisons against string literals, with the exception
     of testing for equality or inequality of a string literal with NULL.  */
  if (code == EQ_EXPR || code == NE_EXPR)
    {
      if ((code1 == STRING_CST && !FUNC4 (arg2.value))
	  || (code2 == STRING_CST && !FUNC4 (arg1.value)))
	FUNC7 (OPT_Waddress, 
                 "comparison with string literal results in unspecified behaviour");
    }
  else if (FUNC1 (code) == tcc_comparison
	   && (code1 == STRING_CST || code2 == STRING_CST))
    FUNC7 (OPT_Waddress, 
             "comparison with string literal results in unspecified behaviour");

  if (FUNC2 (result.value) 
      && !FUNC2 (arg1.value) 
      && !FUNC2 (arg2.value))
    FUNC5 (result.value);

  return result;
}