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
 int /*<<< orphan*/  O_RDWR ; 
 int errno ; 
 scalar_t__ g_fd ; 
 int /*<<< orphan*/  g_lock ; 
 scalar_t__ g_refcount ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(void)
{
	(void) FUNC1(&g_lock);
	if (g_refcount == 0) {
		g_fd = FUNC0("/dev/zfs", O_RDWR);
		if (g_fd < 0) {
			(void) FUNC2(&g_lock);
			return (errno);
		}
	}
	g_refcount++;
	(void) FUNC2(&g_lock);

	return (0);
}