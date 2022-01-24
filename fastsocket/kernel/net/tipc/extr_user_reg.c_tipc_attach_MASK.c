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
typedef  size_t u32 ;
typedef  scalar_t__ tipc_mode_event ;
struct tipc_user {size_t next; int /*<<< orphan*/  ports; void* usr_handle; scalar_t__ callback; } ;
typedef  int /*<<< orphan*/  Handler ;

/* Variables and functions */
 int EBUSY ; 
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ TIPC_NOT_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 size_t next_free_user ; 
 scalar_t__ reg_callback ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  reg_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 
 scalar_t__ tipc_mode ; 
 int /*<<< orphan*/  tipc_user_count ; 
 struct tipc_user* users ; 

int FUNC6(u32 *userid, tipc_mode_event cb, void *usr_handle)
{
	struct tipc_user *user_ptr;

	if ((tipc_mode == TIPC_NOT_RUNNING) && !cb)
		return -ENOPROTOOPT;
	if (!users)
		FUNC2();

	FUNC3(&reg_lock);
	if (!next_free_user) {
		FUNC4(&reg_lock);
		return -EBUSY;
	}
	user_ptr = &users[next_free_user];
	*userid = next_free_user;
	next_free_user = user_ptr->next;
	user_ptr->next = -1;
	FUNC4(&reg_lock);

	user_ptr->callback = cb;
	user_ptr->usr_handle = usr_handle;
	FUNC0(&user_ptr->ports);
	FUNC1(&tipc_user_count);

	if (cb && (tipc_mode != TIPC_NOT_RUNNING))
		FUNC5((Handler)reg_callback, (unsigned long)user_ptr);
	return 0;
}