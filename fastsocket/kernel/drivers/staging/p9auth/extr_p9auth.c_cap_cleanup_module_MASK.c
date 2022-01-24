#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  cdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* cap_devices ; 
 int /*<<< orphan*/  cap_major ; 
 int /*<<< orphan*/  cap_minor ; 
 int cap_nr_devs ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(void)
{
	int i;
	dev_t devno = FUNC0(cap_major, cap_minor);
	if (cap_devices) {
		for (i = 0; i < cap_nr_devs; i++) {
			FUNC1(cap_devices + i);
			FUNC2(&cap_devices[i].cdev);
		}
		FUNC3(cap_devices);
	}
	FUNC4(devno, cap_nr_devs);

}