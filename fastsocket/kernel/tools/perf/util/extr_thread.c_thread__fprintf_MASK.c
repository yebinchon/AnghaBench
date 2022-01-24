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
struct thread {int pid; char* comm; int /*<<< orphan*/  mg; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,char*,int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static size_t FUNC2(struct thread *self, FILE *fp)
{
	return FUNC0(fp, "Thread %d %s\n", self->pid, self->comm) +
	       FUNC1(&self->mg, verbose, fp);
}