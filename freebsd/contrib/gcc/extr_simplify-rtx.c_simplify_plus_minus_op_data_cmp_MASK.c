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
struct simplify_plus_minus_op_data {int /*<<< orphan*/  op; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (const void *p1, const void *p2)
{
  const struct simplify_plus_minus_op_data *d1 = p1;
  const struct simplify_plus_minus_op_data *d2 = p2;
  int result;

  result = (FUNC2 (d2->op)
	    - FUNC2 (d1->op));
  if (result)
    return result;

  /* Group together equal REGs to do more simplification.  */
  if (FUNC1 (d1->op) && FUNC1 (d2->op))
    return FUNC0 (d1->op) - FUNC0 (d2->op);
  else
    return 0;
}