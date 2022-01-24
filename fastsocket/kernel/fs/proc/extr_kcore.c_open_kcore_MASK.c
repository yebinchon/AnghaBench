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
struct inode {int /*<<< orphan*/  i_mutex; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_RAWIO ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ kcore_need_update ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_1__* proc_root_kcore ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	if (!FUNC0(CAP_SYS_RAWIO))
		return -EPERM;
	if (kcore_need_update)
		FUNC3();
	if (FUNC1(inode) != proc_root_kcore->size) {
		FUNC4(&inode->i_mutex);
		FUNC2(inode, proc_root_kcore->size);
		FUNC5(&inode->i_mutex);
	}
	return 0;
}