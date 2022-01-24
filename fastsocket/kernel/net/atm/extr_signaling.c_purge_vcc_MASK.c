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
struct atm_vcc {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {scalar_t__ sk_family; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATM_VF_META ; 
 int /*<<< orphan*/  ATM_VF_REGIS ; 
 int /*<<< orphan*/  ATM_VF_RELEASED ; 
 int /*<<< orphan*/  EUNATCH ; 
 scalar_t__ PF_ATMSVC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (struct atm_vcc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct atm_vcc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct atm_vcc *vcc)
{
	if (FUNC2(vcc)->sk_family == PF_ATMSVC &&
	    !FUNC3(ATM_VF_META, &vcc->flags)) {
		FUNC1(ATM_VF_RELEASED, &vcc->flags);
		FUNC0(ATM_VF_REGIS, &vcc->flags);
		FUNC4(vcc, -EUNATCH);
	}
}