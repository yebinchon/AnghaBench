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
struct c_expr {int /*<<< orphan*/  value; int /*<<< orphan*/  original_code; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR_MARK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

struct c_expr
FUNC3 (enum tree_code code, struct c_expr arg)
{
  struct c_expr result;

  result.original_code = ERROR_MARK;
  result.value = FUNC1 (code, arg.value, 0);
  
  if (FUNC0 (result.value) && !FUNC0 (arg.value))
    FUNC2 (result.value);

  return result;
}