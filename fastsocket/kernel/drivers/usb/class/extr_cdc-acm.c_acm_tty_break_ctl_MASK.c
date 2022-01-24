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
struct tty_struct {struct acm* driver_data; } ;
struct acm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct acm*) ; 
 int EINVAL ; 
 int FUNC1 (struct acm*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, int state)
{
	struct acm *acm = tty->driver_data;
	int retval;
	if (!FUNC0(acm))
		return -EINVAL;
	retval = FUNC1(acm, state ? 0xffff : 0);
	if (retval < 0)
		FUNC2("send break failed");
	return retval;
}