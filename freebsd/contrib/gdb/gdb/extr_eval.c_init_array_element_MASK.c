#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct value {int dummy; } ;
struct expression {TYPE_1__* elts; } ;
typedef  enum noside { ____Placeholder_noside } noside ;
struct TYPE_2__ {scalar_t__ opcode; } ;
typedef  scalar_t__ LONGEST ;

/* Variables and functions */
 scalar_t__ BINOP_COMMA ; 
 scalar_t__ BINOP_RANGE ; 
 int /*<<< orphan*/  NULL_TYPE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 scalar_t__ FUNC2 (struct value*) ; 
 int /*<<< orphan*/  FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct expression*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static LONGEST
FUNC8 (struct value *array, struct value *element,
		    struct expression *exp, int *pos,
		    enum noside noside, LONGEST low_bound, LONGEST high_bound)
{
  LONGEST index;
  int element_size = FUNC0 (FUNC3 (element));
  if (exp->elts[*pos].opcode == BINOP_COMMA)
    {
      (*pos)++;
      FUNC8 (array, element, exp, pos, noside,
			  low_bound, high_bound);
      return FUNC8 (array, element,
				 exp, pos, noside, low_bound, high_bound);
    }
  else if (exp->elts[*pos].opcode == BINOP_RANGE)
    {
      LONGEST low, high;
      (*pos)++;
      low = FUNC7 (FUNC5 (NULL_TYPE, exp, pos, noside));
      high = FUNC7 (FUNC5 (NULL_TYPE, exp, pos, noside));
      if (low < low_bound || high > high_bound)
	FUNC4 ("tuple range index out of range");
      for (index = low; index <= high; index++)
	{
	  FUNC6 (FUNC2 (array)
		  + (index - low_bound) * element_size,
		  FUNC1 (element), element_size);
	}
    }
  else
    {
      index = FUNC7 (FUNC5 (NULL_TYPE, exp, pos, noside));
      if (index < low_bound || index > high_bound)
	FUNC4 ("tuple index out of range");
      FUNC6 (FUNC2 (array) + (index - low_bound) * element_size,
	      FUNC1 (element), element_size);
    }
  return index;
}