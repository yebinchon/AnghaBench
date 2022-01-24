#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_12__ {scalar_t__ sign; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int VOIDmode ; 
 int /*<<< orphan*/  dconstm1 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_1__ const*) ; 

void
FUNC4 (REAL_VALUE_TYPE *r, enum machine_mode mode,
	    const REAL_VALUE_TYPE *x)
{
  REAL_VALUE_TYPE t;

  FUNC1 (&t, x);
  if (! FUNC3 (&t, x) && x->sign)
    FUNC0 (&t, &t, &dconstm1, 0);
  if (mode != VOIDmode)
    FUNC2 (r, mode, &t);
  else
    *r = t;
}