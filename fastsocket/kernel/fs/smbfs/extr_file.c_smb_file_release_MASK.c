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
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  openers; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct inode *inode, struct file * file)
{
	FUNC2();
	if (!--FUNC0(inode)->openers) {
		/* We must flush any dirty pages now as we won't be able to
		   write anything after close. mmap can trigger this.
		   "openers" should perhaps include mmap'ers ... */
		FUNC1(inode->i_mapping);
		FUNC3(inode);
	}
	FUNC4();
	return 0;
}