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
 int /*<<< orphan*/  DTRACEHIOC_REMOVE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int devnamep ; 
 int gen ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int fd;

	if ((fd = FUNC3(devnamep, O_RDWR)) < 0) {
		FUNC1(1, "failed to open helper device %s", devnamep);
		return;
	}

	if ((gen = FUNC2(fd, DTRACEHIOC_REMOVE, &gen)) == -1)
		FUNC1(1, "DTrace ioctl failed to remove DOF (%d)\n", gen);
	else
		FUNC1(1, "DTrace ioctl removed DOF (%d)\n", gen);

	(void) FUNC0(fd);
}