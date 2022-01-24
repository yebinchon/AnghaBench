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
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 

int
FUNC3(int namelen, int valuelen, int blocksize, int *local)
{
	int size;

	size = FUNC0(namelen, valuelen);
	if (size < FUNC1(blocksize)) {
		if (local) {
			*local = 1;
		}
	} else {
		size = FUNC2(namelen);
		if (local) {
			*local = 0;
		}
	}
	return(size);
}