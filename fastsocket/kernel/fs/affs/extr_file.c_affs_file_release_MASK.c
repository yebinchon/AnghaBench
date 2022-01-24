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
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct TYPE_2__ {scalar_t__ mmu_private; int /*<<< orphan*/  i_opencnt; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(struct inode *inode, struct file *filp)
{
	FUNC7("AFFS: release(%lu, %d)\n",
		 inode->i_ino, FUNC4(&FUNC0(inode)->i_opencnt));

	if (FUNC3(&FUNC0(inode)->i_opencnt)) {
		FUNC5(&inode->i_mutex);
		if (inode->i_size != FUNC0(inode)->mmu_private)
			FUNC2(inode);
		FUNC1(inode);
		FUNC6(&inode->i_mutex);
	}

	return 0;
}