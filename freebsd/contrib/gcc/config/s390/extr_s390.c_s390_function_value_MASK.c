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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ TARGET_HARD_FLOAT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int*,int) ; 

rtx
FUNC8 (tree type, enum machine_mode mode)
{
  if (type)
    {
      int unsignedp = FUNC4 (type);
      mode = FUNC7 (type, FUNC3 (type), &unsignedp, 1);
    }

  FUNC5 (FUNC0 (mode) == MODE_INT || FUNC2 (mode));
  FUNC5 (FUNC1 (mode) <= 8);

  if (TARGET_HARD_FLOAT && FUNC2 (mode))
    return FUNC6 (mode, 16);
  else
    return FUNC6 (mode, 2);
}