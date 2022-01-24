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
struct TYPE_2__ {int /*<<< orphan*/  ippathid; int /*<<< orphan*/  ipuser; } ;
union iucv_param {TYPE_1__ ctrl; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int /*<<< orphan*/  IUCV_SEVER ; 
 int FUNC0 (int /*<<< orphan*/ ,union iucv_param*) ; 
 union iucv_param** iucv_param_irq ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (union iucv_param*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC3 () ; 

__attribute__((used)) static int FUNC4(u16 pathid, u8 userdata[16])
{
	union iucv_param *parm;

	parm = iucv_param_irq[FUNC3()];
	FUNC2(parm, 0, sizeof(union iucv_param));
	if (userdata)
		FUNC1(parm->ctrl.ipuser, userdata, sizeof(parm->ctrl.ipuser));
	parm->ctrl.ippathid = pathid;
	return FUNC0(IUCV_SEVER, parm);
}