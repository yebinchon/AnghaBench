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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  SImode ; 
 scalar_t__ TARGET_HARD_TP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC6 (rtx target)
{
  if (!target)
    target = FUNC4 (SImode);

  if (TARGET_HARD_TP)
    {
      /* Can return in any reg.  */
      FUNC0 (FUNC2 (target));
    }
  else
    {
      /* Always returned in r0.  Immediately copy the result into a pseudo,
	 otherwise other uses of r0 (e.g. setting up function arguments) may
	 clobber the value.  */

      rtx tmp;

      FUNC0 (FUNC3 ());

      tmp = FUNC5 (SImode, 0);
      FUNC1 (target, tmp);
    }
  return target;
}