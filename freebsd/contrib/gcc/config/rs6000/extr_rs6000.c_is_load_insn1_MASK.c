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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (rtx pat)
{
  if (!pat || pat == NULL_RTX)
    return false;

  if (FUNC0 (pat) == SET)
    return FUNC4 (FUNC1 (pat));

  if (FUNC0 (pat) == PARALLEL)
    {
      int i;

      for (i = 0; i < FUNC3 (pat, 0); i++)
	if (FUNC5 (FUNC2 (pat, 0, i)))
	  return true;
    }

  return false;
}