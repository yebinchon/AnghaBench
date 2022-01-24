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
struct c_expr {int /*<<< orphan*/  original_code; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct c_expr FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct c_expr FUNC4 (struct c_expr) ; 

__attribute__((used)) static struct c_expr
FUNC5 (c_parser *parser)
{
  struct c_expr expr;
  expr = FUNC2 (parser, NULL);
  while (FUNC3 (parser, CPP_COMMA))
    {
      struct c_expr next;
      FUNC1 (parser);
      next = FUNC2 (parser, NULL);
      next = FUNC4 (next);
      expr.value = FUNC0 (expr.value, next.value);
      expr.original_code = COMPOUND_EXPR;
    }
  return expr;
}