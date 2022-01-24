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
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int PROC_DYNAMIC_FIRST ; 
 unsigned int UINT_MAX ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  proc_inum_ida ; 
 int /*<<< orphan*/  proc_inum_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(unsigned int *inum)
{
	unsigned int i;
	int error;

retry:
	if (!FUNC1(&proc_inum_ida, GFP_KERNEL))
		return -ENOMEM;

	FUNC3(&proc_inum_lock);
	error = FUNC0(&proc_inum_ida, &i);
	FUNC4(&proc_inum_lock);
	if (error == -EAGAIN)
		goto retry;
	else if (error)
		return error;

	if (i > UINT_MAX - PROC_DYNAMIC_FIRST) {
		FUNC3(&proc_inum_lock);
		FUNC2(&proc_inum_ida, i);
		FUNC4(&proc_inum_lock);
		return -ENOSPC;
	}
	*inum = PROC_DYNAMIC_FIRST + i;
	return 0;
}