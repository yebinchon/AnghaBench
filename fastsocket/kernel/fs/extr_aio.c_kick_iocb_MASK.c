#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  tsk; } ;
struct kiocb {TYPE_1__ ki_obj; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct kiocb *iocb)
{
	/* sync iocbs are easy: they can only ever be executing from a 
	 * single context. */
	if (FUNC0(iocb)) {
		FUNC1(iocb);
	        FUNC3(iocb->ki_obj.tsk);
		return;
	}

	FUNC2(iocb);
}