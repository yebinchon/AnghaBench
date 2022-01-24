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
struct thread {int comm_set; int /*<<< orphan*/ * comm; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*) ; 

int FUNC2(struct thread *self, const char *comm)
{
	int err;

	if (self->comm)
		FUNC0(self->comm);
	self->comm = FUNC1(comm);
	err = self->comm == NULL ? -ENOMEM : 0;
	if (!err) {
		self->comm_set = true;
	}
	return err;
}