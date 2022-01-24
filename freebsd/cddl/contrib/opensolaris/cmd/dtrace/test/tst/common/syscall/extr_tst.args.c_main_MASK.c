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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYS_mmap ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int,int,int,int /*<<< orphan*/ ) ; 

int
FUNC1(int argc, char **argv)
{
	for (;;) {
		(void) FUNC0(SYS_mmap, NULL, (size_t)1, 2, 3, -1,
		    (off_t)0x12345678);
	}

	return (0);
}