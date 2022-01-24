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
struct inode {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct inode*,int) ; 
 int FUNC1 (struct inode*,int) ; 
 int FUNC2 (struct inode*,int) ; 
 int FUNC3 (struct inode*,int) ; 
 int FUNC4 (struct inode*) ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, int depth)
{
	int max;

	if (depth == FUNC4(inode)) {
		if (depth == 0)
			max = FUNC2(inode, 1);
		else
			max = FUNC3(inode, 1);
	} else {
		if (depth == 0)
			max = FUNC0(inode, 1);
		else
			max = FUNC1(inode, 1);
	}

	return max;
}