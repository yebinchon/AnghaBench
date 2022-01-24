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
struct TYPE_5__ {int /*<<< orphan*/  len; } ;
struct TYPE_7__ {int mode; int /*<<< orphan*/  flags; TYPE_1__ DAPF; int /*<<< orphan*/  writeflush; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  DAP_BUFF_SIZE ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  F_WRITEFLUSH ; 
 int /*<<< orphan*/  F_WRITING ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 TYPE_3__ dev ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	if (!(dev.mode & FMODE_WRITE) || !FUNC6(F_WRITING, &dev.flags))
		return;
	FUNC4(F_WRITEFLUSH, &dev.flags);
	FUNC2(
		&dev.writeflush,
		FUNC1(dev.DAPF.len));
	FUNC0(F_WRITEFLUSH, &dev.flags);
	if (!FUNC5(current)) {
		current->state = TASK_INTERRUPTIBLE;
		FUNC3(FUNC1(DAP_BUFF_SIZE));
	}
	FUNC0(F_WRITING, &dev.flags);
}