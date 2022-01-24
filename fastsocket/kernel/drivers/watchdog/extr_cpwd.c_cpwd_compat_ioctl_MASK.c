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
struct file {int dummy; } ;

/* Variables and functions */
 int ENOIOCTLCMD ; 
#define  WIOCGSTAT 130 
#define  WIOCSTART 129 
#define  WIOCSTOP 128 
 int FUNC0 (struct file*,unsigned int,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static long FUNC3(struct file *file, unsigned int cmd,
			      unsigned long arg)
{
	int rval = -ENOIOCTLCMD;

	switch (cmd) {
	/* solaris ioctls are specific to this driver */
	case WIOCSTART:
	case WIOCSTOP:
	case WIOCGSTAT:
		FUNC1();
		rval = FUNC0(file, cmd, arg);
		FUNC2();
		break;

	/* everything else is handled by the generic compat layer */
	default:
		break;
	}

	return rval;
}