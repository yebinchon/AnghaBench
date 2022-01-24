#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct user_struct {int /*<<< orphan*/  processes; } ;
struct cred {struct user_struct* user; int /*<<< orphan*/  uid; } ;
struct TYPE_7__ {TYPE_2__* signal; } ;
struct TYPE_6__ {TYPE_1__* rlim; } ;
struct TYPE_5__ {scalar_t__ rlim_cur; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 struct user_struct* INIT_USER ; 
 size_t RLIMIT_NPROC ; 
 struct user_struct* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct user_struct*) ; 
 int /*<<< orphan*/  FUNC4 (struct user_struct*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(struct cred *new)
{
	struct user_struct *new_user;

	new_user = FUNC0(FUNC2(), new->uid);
	if (!new_user)
		return -EAGAIN;

	if (!FUNC4(new_user, current)) {
		FUNC3(new_user);
		return -EINVAL;
	}

	if (FUNC1(&new_user->processes) >=
				current->signal->rlim[RLIMIT_NPROC].rlim_cur &&
			new_user != INIT_USER) {
		FUNC3(new_user);
		return -EAGAIN;
	}

	FUNC3(new->user);
	new->user = new_user;
	return 0;
}