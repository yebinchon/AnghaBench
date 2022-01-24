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
struct minimal_symbol {int dummy; } ;
struct breakpoint {int silent; int /*<<< orphan*/  addr_string; int /*<<< orphan*/  enable_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct minimal_symbol*) ; 
 int /*<<< orphan*/  bp_disabled ; 
 int /*<<< orphan*/  bp_longjmp ; 
 int /*<<< orphan*/  bp_longjmp_resume ; 
 struct breakpoint* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4 (char *func_name)
{
  struct breakpoint *b;
  struct minimal_symbol *m;

  if (func_name == NULL)
    b = FUNC1 (0, bp_longjmp_resume);
  else
    {
      if ((m = FUNC2 (func_name, NULL)) == NULL)
	return;
 
      b = FUNC1 (FUNC0 (m), bp_longjmp);
    }

  b->enable_state = bp_disabled;
  b->silent = 1;
  if (func_name)
    b->addr_string = FUNC3 (func_name);
}