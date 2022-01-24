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
struct user_port {scalar_t__ user_ref; int /*<<< orphan*/  uport_list; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOPROTOOPT ; 
 scalar_t__ MAX_USERID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reg_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  users ; 

int FUNC3(struct user_port *up_ptr)
{
	if (up_ptr->user_ref == 0)
		return 0;
	if (up_ptr->user_ref > MAX_USERID)
		return -EINVAL;
	if (!users )
		return -ENOPROTOOPT;

	FUNC1(&reg_lock);
	FUNC0(&up_ptr->uport_list);
	FUNC2(&reg_lock);
	return 0;
}