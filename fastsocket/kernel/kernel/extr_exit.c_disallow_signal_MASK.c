#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t sig ;
struct TYPE_8__ {TYPE_3__* sighand; } ;
struct TYPE_7__ {int /*<<< orphan*/  siglock; TYPE_2__* action; } ;
struct TYPE_5__ {int /*<<< orphan*/  sa_handler; } ;
struct TYPE_6__ {TYPE_1__ sa; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SIG_IGN ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(int sig)
{
	if (!FUNC3(sig) || sig < 1)
		return -EINVAL;

	FUNC1(&current->sighand->siglock);
	current->sighand->action[(sig)-1].sa.sa_handler = SIG_IGN;
	FUNC0();
	FUNC2(&current->sighand->siglock);
	return 0;
}