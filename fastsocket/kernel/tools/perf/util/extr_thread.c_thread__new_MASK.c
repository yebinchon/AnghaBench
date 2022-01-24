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
struct thread {int pid; scalar_t__ comm; int /*<<< orphan*/  mg; } ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,char*,int) ; 
 struct thread* FUNC3 (int) ; 

struct thread *FUNC4(pid_t pid)
{
	struct thread *self = FUNC3(sizeof(*self));

	if (self != NULL) {
		FUNC1(&self->mg);
		self->pid = pid;
		self->comm = FUNC0(32);
		if (self->comm)
			FUNC2(self->comm, 32, ":%d", self->pid);
	}

	return self;
}