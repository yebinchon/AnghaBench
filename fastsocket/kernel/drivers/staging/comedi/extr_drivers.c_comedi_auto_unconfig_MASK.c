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
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int COMEDI_NUM_BOARD_MINORS ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 scalar_t__ FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*) ; 

void FUNC5(struct device *hardware_device)
{
	unsigned *minor = (unsigned *)FUNC2(hardware_device);
	if (minor == NULL)
		return;

	FUNC0(*minor >= COMEDI_NUM_BOARD_MINORS);

	FUNC1(*minor);
	FUNC3(hardware_device, NULL);
	FUNC4(minor);
}