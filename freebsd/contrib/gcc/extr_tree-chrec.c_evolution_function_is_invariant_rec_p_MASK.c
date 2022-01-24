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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/ * parray; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ POLYNOMIAL_CHREC ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* current_loops ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8 (tree chrec, int loopnum)
{
  if (FUNC6 (chrec))
    return true;

  if (FUNC3 (chrec) == SSA_NAME 
      && FUNC7 (current_loops->parray[loopnum],
				   chrec))
    return true;

  if (FUNC3 (chrec) == POLYNOMIAL_CHREC)
    {
      if (FUNC2 (chrec) == (unsigned) loopnum
	  || !FUNC8 (FUNC1 (chrec),
						     loopnum)
	  || !FUNC8 (FUNC0 (chrec),
						     loopnum))
	return false;
      return true;
    }

  switch (FUNC4 (FUNC3 (chrec)))
    {
    case 2:
      if (!FUNC8 (FUNC5 (chrec, 1),
						  loopnum))
	return false;
      
    case 1:
      if (!FUNC8 (FUNC5 (chrec, 0),
						  loopnum))
	return false;
      return true;

    default:
      return false;
    }

  return false;
}