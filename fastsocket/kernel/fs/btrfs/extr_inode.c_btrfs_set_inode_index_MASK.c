#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ index_cnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 

int FUNC3(struct inode *dir, u64 *index)
{
	int ret = 0;

	if (FUNC0(dir)->index_cnt == (u64)-1) {
		ret = FUNC1(dir);
		if (ret) {
			ret = FUNC2(dir);
			if (ret)
				return ret;
		}
	}

	*index = FUNC0(dir)->index_cnt;
	FUNC0(dir)->index_cnt++;

	return ret;
}