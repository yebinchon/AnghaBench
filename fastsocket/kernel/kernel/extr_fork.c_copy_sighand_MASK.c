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
struct task_struct {int /*<<< orphan*/  sighand; } ;
struct sighand_struct {int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;
struct TYPE_4__ {TYPE_1__* sighand; } ;
struct TYPE_3__ {int /*<<< orphan*/  action; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 unsigned long CLONE_SIGHAND ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_2__* current ; 
 struct sighand_struct* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct sighand_struct*) ; 
 int /*<<< orphan*/  sighand_cachep ; 

__attribute__((used)) static int FUNC5(unsigned long clone_flags, struct task_struct *tsk)
{
	struct sighand_struct *sig;

	if (clone_flags & CLONE_SIGHAND) {
		FUNC0(&current->sighand->count);
		return 0;
	}
	sig = FUNC2(sighand_cachep, GFP_KERNEL);
	FUNC4(tsk->sighand, sig);
	if (!sig)
		return -ENOMEM;
	FUNC1(&sig->count, 1);
	FUNC3(sig->action, current->sighand->action, sizeof(sig->action));
	return 0;
}