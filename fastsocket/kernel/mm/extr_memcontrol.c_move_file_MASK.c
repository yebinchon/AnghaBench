#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* to; } ;
struct TYPE_3__ {int /*<<< orphan*/  move_charge_at_immigrate; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOVE_CHARGE_TYPE_FILE ; 
 TYPE_2__ mc ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(void)
{
	return FUNC0(MOVE_CHARGE_TYPE_FILE,
					&mc.to->move_charge_at_immigrate);
}