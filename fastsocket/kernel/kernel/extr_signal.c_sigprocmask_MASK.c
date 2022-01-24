#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sigset_t ;
struct TYPE_4__ {TYPE_1__* sighand; int /*<<< orphan*/  blocked; } ;
struct TYPE_3__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int EINVAL ; 
#define  SIG_BLOCK 130 
#define  SIG_SETMASK 129 
#define  SIG_UNBLOCK 128 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(int how, sigset_t *set, sigset_t *oldset)
{
	int error;

	FUNC3(&current->sighand->siglock);
	if (oldset)
		*oldset = current->blocked;

	error = 0;
	switch (how) {
	case SIG_BLOCK:
		FUNC2(&current->blocked, &current->blocked, set);
		break;
	case SIG_UNBLOCK:
		FUNC1(&current->blocked, &current->blocked, set);
		break;
	case SIG_SETMASK:
		current->blocked = *set;
		break;
	default:
		error = -EINVAL;
	}
	FUNC0();
	FUNC4(&current->sighand->siglock);

	return error;
}