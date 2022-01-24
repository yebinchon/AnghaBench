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
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int USBFS_XFER_MAX ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbfs_memory_mb ; 
 int /*<<< orphan*/  usbfs_memory_usage ; 

__attribute__((used)) static int FUNC4(unsigned amount)
{
	unsigned lim;

	/*
	 * Convert usbfs_memory_mb to bytes, avoiding overflows.
	 * 0 means use the hard limit (effectively unlimited).
	 */
	lim = FUNC0(usbfs_memory_mb);
	if (lim == 0 || lim > (USBFS_XFER_MAX >> 20))
		lim = USBFS_XFER_MAX;
	else
		lim <<= 20;

	FUNC1(amount, &usbfs_memory_usage);
	if (FUNC2(&usbfs_memory_usage) <= lim)
		return 0;
	FUNC3(amount, &usbfs_memory_usage);
	return -ENOMEM;
}