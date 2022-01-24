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
struct file {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  wdrtas_miscdev_open ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	/* only open once */
	if (FUNC1(&wdrtas_miscdev_open) > 1) {
		FUNC0(&wdrtas_miscdev_open);
		return -EBUSY;
	}

	FUNC4();
	FUNC3();

	return FUNC2(inode, file);
}