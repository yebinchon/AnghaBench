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
struct value {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 struct value* FUNC3 (struct value*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC4 (struct value *func, int nargs, struct value *args[],
		     CORE_ADDR *sp)
{
  int i;

  if (FUNC1 (FUNC2 (func)) == 0
      || nargs != FUNC1 (FUNC2 (func)))
    return;

  for (i = 0; i < nargs; i += 1)
    args[i] =
      FUNC3 (args[i], FUNC0 (FUNC2 (func), i), sp);
}