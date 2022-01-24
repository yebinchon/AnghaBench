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
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int O_RDONLY ; 
 int O_RDWR ; 
 int O_WRONLY ; 

__attribute__((used)) static int FUNC0(int fmode)
{
	if (fmode == (FMODE_READ | FMODE_WRITE))
		return O_RDWR;
	if (fmode == FMODE_READ)
		return O_RDONLY;
	if (fmode == FMODE_WRITE)
		return O_WRONLY;
	return 0;
}