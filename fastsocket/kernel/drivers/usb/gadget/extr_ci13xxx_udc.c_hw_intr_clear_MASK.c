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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAP_USBINTR ; 
 int /*<<< orphan*/  CAP_USBSTS ; 
 int EINVAL ; 
 int REG_BITS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int n)
{
	if (n >= REG_BITS)
		return -EINVAL;

	FUNC1(CAP_USBINTR, FUNC0(n), 0);
	FUNC1(CAP_USBSTS,  FUNC0(n), FUNC0(n));
	return 0;
}