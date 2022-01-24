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
struct c_expr {scalar_t__ value; void* original_code; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMPOUND_EXPR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 void* ERROR_MARK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

struct c_expr
FUNC6 (struct c_expr expr)
{
  struct c_expr ret;
  if (expr.value == error_mark_node)
    {
      ret.value = error_mark_node;
      ret.original_code = ERROR_MARK;
      FUNC5 (false);
    }
  else
    {
      ret.value = FUNC3 (FUNC1 (expr.value));
      ret.original_code = ERROR_MARK;
      if (FUNC4 (FUNC1 (expr.value)))
	{
	  /* sizeof is evaluated when given a vla (C99 6.5.3.4p2).  */
	  ret.value = FUNC2 (COMPOUND_EXPR, FUNC1 (ret.value), expr.value, ret.value);
	}
      FUNC5 (FUNC0 (FUNC1 (expr.value)));
    }
  return ret;
}