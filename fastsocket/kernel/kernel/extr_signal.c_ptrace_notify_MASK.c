#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int si_signo; int si_code; int /*<<< orphan*/  si_uid; int /*<<< orphan*/  si_pid; } ;
typedef  TYPE_2__ siginfo_t ;
struct TYPE_9__ {TYPE_1__* sighand; } ;
struct TYPE_7__ {int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int SIGTRAP ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 

void FUNC7(int exit_code)
{
	siginfo_t info;

	FUNC0((exit_code & (0x7f | ~0xffff)) != SIGTRAP);

	FUNC2(&info, 0, sizeof info);
	info.si_signo = SIGTRAP;
	info.si_code = exit_code;
	info.si_pid = FUNC6(current);
	info.si_uid = FUNC1();

	/* Let the debugger run.  */
	FUNC4(&current->sighand->siglock);
	FUNC3(exit_code, 1, &info);
	FUNC5(&current->sighand->siglock);
}