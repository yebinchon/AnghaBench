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
struct type {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOC_CONST ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 struct type* FUNC1 (struct symbol*) ; 
 scalar_t__ FUNC2 (struct type*) ; 
 scalar_t__ TYPE_CODE_ENUM ; 
 scalar_t__ TYPE_CODE_FUNC ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 int FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct type* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (struct symbol *func, struct value **actuals, int n_actuals)
{
  int i;
  struct type *func_type = FUNC1 (func);

  if (FUNC0 (func) == LOC_CONST &&
      FUNC2 (func_type) == TYPE_CODE_ENUM)
    return (n_actuals == 0);
  else if (func_type == NULL || FUNC2 (func_type) != TYPE_CODE_FUNC)
    return 0;

  if (FUNC4 (func_type) != n_actuals)
    return 0;

  for (i = 0; i < n_actuals; i += 1)
    {
      struct type *ftype = FUNC7 (FUNC3 (func_type, i));
      struct type *atype = FUNC7 (FUNC5 (actuals[i]));

      if (!FUNC6 (FUNC3 (func_type, i),
			   FUNC5 (actuals[i]), 1))
	return 0;
    }
  return 1;
}