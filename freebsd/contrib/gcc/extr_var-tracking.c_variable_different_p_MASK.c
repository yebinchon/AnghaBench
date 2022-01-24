#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* variable ;
struct TYPE_7__ {scalar_t__ offset; int /*<<< orphan*/  cur_loc; } ;
struct TYPE_6__ {int n_var_parts; TYPE_2__* var_part; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,TYPE_2__*) ; 

__attribute__((used)) static bool
FUNC4 (variable var1, variable var2,
		      bool compare_current_location)
{
  int i;

  if (var1 == var2)
    return false;

  if (var1->n_var_parts != var2->n_var_parts)
    return true;

  for (i = 0; i < var1->n_var_parts; i++)
    {
      if (var1->var_part[i].offset != var2->var_part[i].offset)
	return true;
      if (compare_current_location)
	{
	  if (!((FUNC1 (var1->var_part[i].cur_loc)
		 && FUNC1 (var2->var_part[i].cur_loc)
		 && (FUNC0 (var1->var_part[i].cur_loc)
		     == FUNC0 (var2->var_part[i].cur_loc)))
		|| FUNC2 (var1->var_part[i].cur_loc,
				var2->var_part[i].cur_loc)))
	    return true;
	}
      if (FUNC3 (&var1->var_part[i], &var2->var_part[i]))
	return true;
      if (FUNC3 (&var2->var_part[i], &var1->var_part[i]))
	return true;
    }
  return false;
}