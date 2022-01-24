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
 int LKM_EXMODE ; 
 int LKM_NOQUEUE ; 
 int LKM_PRMODE ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int O_WRONLY ; 

__attribute__((used)) static int FUNC0(int open_flags,
				   int *level,
				   int *flags)
{
	if (open_flags & (O_WRONLY|O_RDWR))
		*level = LKM_EXMODE;
	else
		*level = LKM_PRMODE;

	*flags = 0;
	if (open_flags & O_NONBLOCK)
		*flags |= LKM_NOQUEUE;

	return 0;
}