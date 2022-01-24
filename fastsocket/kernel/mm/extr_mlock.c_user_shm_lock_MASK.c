#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct user_struct {unsigned long locked_shm; } ;
struct TYPE_6__ {TYPE_1__* signal; } ;
struct TYPE_5__ {unsigned long rlim_cur; } ;
struct TYPE_4__ {TYPE_2__* rlim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_IPC_LOCK ; 
 size_t PAGE_SHIFT ; 
 size_t PAGE_SIZE ; 
 size_t RLIMIT_MEMLOCK ; 
 unsigned long RLIM_INFINITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (struct user_struct*) ; 
 int /*<<< orphan*/  shmlock_user_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(size_t size, struct user_struct *user)
{
	unsigned long lock_limit, locked;
	int allowed = 0;

	locked = (size + PAGE_SIZE - 1) >> PAGE_SHIFT;
	lock_limit = current->signal->rlim[RLIMIT_MEMLOCK].rlim_cur;
	if (lock_limit == RLIM_INFINITY)
		allowed = 1;
	lock_limit >>= PAGE_SHIFT;
	FUNC2(&shmlock_user_lock);
	if (!allowed &&
	    locked + user->locked_shm > lock_limit && !FUNC0(CAP_IPC_LOCK))
		goto out;
	FUNC1(user);
	user->locked_shm += locked;
	allowed = 1;
out:
	FUNC3(&shmlock_user_lock);
	return allowed;
}