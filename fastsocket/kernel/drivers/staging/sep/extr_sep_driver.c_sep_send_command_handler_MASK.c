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
struct sep_device {int /*<<< orphan*/  send_ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  HW_HOST_HOST_SEP_GPR0_REG_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sep_device*) ; 
 int /*<<< orphan*/  sep_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct sep_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct sep_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct sep_device *sep)
{
	FUNC0("sep:sep_send_command_handler start\n");

	FUNC2(&sep_mutex);
	FUNC5(sep);

	/* FIXME: flush cache */
	FUNC1();

	FUNC4(sep);
	/* update counter */
	sep->send_ct++;
	/* send interrupt to SEP */
	FUNC6(sep, HW_HOST_HOST_SEP_GPR0_REG_ADDR, 0x2);
	FUNC0("SEP Driver:<-------- sep_send_command_handler end\n");
	FUNC3(&sep_mutex);
	return;
}