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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uio_fops ; 
 scalar_t__ uio_major ; 

__attribute__((used)) static int FUNC1(void)
{
	uio_major = FUNC0(0, "uio", &uio_fops);
	if (uio_major < 0)
		return uio_major;
	return 0;
}