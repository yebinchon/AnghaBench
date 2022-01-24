#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ type; int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ value_range_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VR_RANGE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (value_range_t *vr, bool *strict_overflow_p)
{
  FUNC2 (vr->type == VR_RANGE);
  if (FUNC3 (vr->min))
    {
      *strict_overflow_p = true;
      if (!FUNC1 (FUNC0 (vr->min)))
	return false;
    }
  if (FUNC3 (vr->max))
    {
      *strict_overflow_p = true;
      if (!FUNC1 (FUNC0 (vr->max)))
	return false;
    }
  return true;
}