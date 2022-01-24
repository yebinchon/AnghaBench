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
struct c_expr {int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 scalar_t__ COMPOUND_LITERAL_EXPR ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ STRING_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct c_expr FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct c_expr FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct c_expr FUNC4 (struct c_expr) ; 

__attribute__((used)) static struct c_expr
FUNC5 (c_parser *parser)
{
  if (FUNC3 (parser, CPP_OPEN_BRACE))
    return FUNC1 (parser, NULL_TREE, false);
  else
    {
      struct c_expr ret;
      ret = FUNC2 (parser, NULL);
      if (FUNC0 (ret.value) != STRING_CST
	  && FUNC0 (ret.value) != COMPOUND_LITERAL_EXPR)
	ret = FUNC4 (ret);
      return ret;
    }
}