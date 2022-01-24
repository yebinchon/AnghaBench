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
struct perf_session {int /*<<< orphan*/  fd; int /*<<< orphan*/  host_machine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_session*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(struct perf_session *self)
{
	FUNC5(self);
	FUNC3(self);
	FUNC4(self);
	FUNC2(&self->host_machine);
	FUNC0(self->fd);
	FUNC1(self);
	FUNC6();
}