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
typedef  int /*<<< orphan*/  tree ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 scalar_t__ BLKmode ; 
 int /*<<< orphan*/  EQ ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 

void
FUNC12 (tree exp)
{
  rtx value;
  tree type;

  value = FUNC8 (exp, const0_rtx, VOIDmode, 0);
  type = FUNC2 (exp);

  /* If all we do is reference a volatile value in memory,
     copy it to a register to be sure it is actually touched.  */
  if (value && FUNC0 (value) && FUNC1 (exp))
    {
      if (FUNC3 (type) == VOIDmode)
	;
      else if (FUNC3 (type) != BLKmode)
	value = FUNC5 (value);
      else
	{
	  rtx lab = FUNC11 ();

	  /* Compare the value with itself to reference it.  */
	  FUNC6 (value, value, EQ,
				   FUNC9 (FUNC4 (type)),
				   BLKmode, 0, lab);
	  FUNC7 (lab);
	}
    }

  /* Free any temporaries used to evaluate this expression.  */
  FUNC10 ();
}