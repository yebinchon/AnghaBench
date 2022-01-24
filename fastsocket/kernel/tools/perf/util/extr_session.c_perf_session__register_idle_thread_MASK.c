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
struct thread {int dummy; } ;
struct perf_session {int dummy; } ;

/* Variables and functions */
 struct thread* FUNC0 (struct perf_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct thread*,char*) ; 

__attribute__((used)) static struct thread *FUNC3(struct perf_session *self)
{
	struct thread *thread = FUNC0(self, 0);

	if (thread == NULL || FUNC2(thread, "swapper")) {
		FUNC1("problem inserting idle task.\n");
		thread = NULL;
	}

	return thread;
}