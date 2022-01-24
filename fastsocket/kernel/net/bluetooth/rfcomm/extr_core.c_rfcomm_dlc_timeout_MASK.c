#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rfcomm_dlc {int /*<<< orphan*/  flags; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_dlc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_SCHED_TIMEO ; 
 int /*<<< orphan*/  RFCOMM_TIMED_OUT ; 
 int /*<<< orphan*/  FUNC1 (struct rfcomm_dlc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct rfcomm_dlc *d = (void *) arg;

	FUNC0("dlc %p state %ld", d, d->state);

	FUNC3(RFCOMM_TIMED_OUT, &d->flags);
	FUNC1(d);
	FUNC2(RFCOMM_SCHED_TIMEO);
}