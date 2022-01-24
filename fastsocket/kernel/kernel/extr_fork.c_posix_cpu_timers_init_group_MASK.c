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
struct TYPE_8__ {int running; } ;
struct TYPE_6__ {void* prof_exp; scalar_t__ sched_exp; void* virt_exp; } ;
struct signal_struct {int /*<<< orphan*/ * cpu_timers; TYPE_4__ cputimer; TYPE_3__* rlim; TYPE_2__ cputime_expires; TYPE_1__* it; } ;
struct TYPE_7__ {scalar_t__ rlim_cur; } ;
struct TYPE_5__ {void* incr; void* expires; } ;

/* Variables and functions */
 size_t CPUCLOCK_PROF ; 
 size_t CPUCLOCK_VIRT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t RLIMIT_CPU ; 
 scalar_t__ RLIM_INFINITY ; 
 void* cputime_zero ; 
 void* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct signal_struct*) ; 

__attribute__((used)) static void FUNC3(struct signal_struct *sig)
{
	/* Thread group counters. */
	FUNC2(sig);

	/* Expiration times and increments. */
	sig->it[CPUCLOCK_PROF].expires = cputime_zero;
	sig->it[CPUCLOCK_PROF].incr = cputime_zero;
	sig->it[CPUCLOCK_VIRT].expires = cputime_zero;
	sig->it[CPUCLOCK_VIRT].incr = cputime_zero;

	/* Cached expiration times. */
	sig->cputime_expires.prof_exp = cputime_zero;
	sig->cputime_expires.virt_exp = cputime_zero;
	sig->cputime_expires.sched_exp = 0;

	if (sig->rlim[RLIMIT_CPU].rlim_cur != RLIM_INFINITY) {
		sig->cputime_expires.prof_exp =
			FUNC1(sig->rlim[RLIMIT_CPU].rlim_cur);
		sig->cputimer.running = 1;
	}

	/* The timer lists. */
	FUNC0(&sig->cpu_timers[0]);
	FUNC0(&sig->cpu_timers[1]);
	FUNC0(&sig->cpu_timers[2]);
}