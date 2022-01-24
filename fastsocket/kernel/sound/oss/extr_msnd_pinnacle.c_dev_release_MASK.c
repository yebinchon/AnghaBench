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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int dsp_minor; int mixer_minor; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_1__ dev ; 
 int FUNC0 (struct file*) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	int minor = FUNC1(inode);
	int err = 0;

	FUNC2();
	if (minor == dev.dsp_minor)
		err = FUNC0(file);
	else if (minor == dev.mixer_minor) {
		/* nothing */
	} else
		err = -EINVAL;
	FUNC3();
	return err;
}