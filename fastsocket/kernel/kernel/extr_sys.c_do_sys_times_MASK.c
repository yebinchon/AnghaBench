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
struct tms {void* tms_cstime; void* tms_cutime; void* tms_stime; void* tms_utime; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_7__ {TYPE_2__* sighand; TYPE_1__* signal; } ;
struct TYPE_6__ {int /*<<< orphan*/  siglock; } ;
struct TYPE_5__ {int /*<<< orphan*/  cstime; int /*<<< orphan*/  cutime; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct tms *tms)
{
	cputime_t tgutime, tgstime, cutime, cstime;

	FUNC1(&current->sighand->siglock);
	FUNC3(current, &tgutime, &tgstime);
	cutime = current->signal->cutime;
	cstime = current->signal->cstime;
	FUNC2(&current->sighand->siglock);
	tms->tms_utime = FUNC0(tgutime);
	tms->tms_stime = FUNC0(tgstime);
	tms->tms_cutime = FUNC0(cutime);
	tms->tms_cstime = FUNC0(cstime);
}