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
struct thread {int dummy; } ;
struct machine {int dummy; } ;
struct branch_stack {unsigned int nr; TYPE_1__* entries; } ;
struct branch_info {int /*<<< orphan*/  flags; int /*<<< orphan*/  from; int /*<<< orphan*/  to; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  from; int /*<<< orphan*/  to; } ;

/* Variables and functions */
 struct branch_info* FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct machine*,struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct branch_info *FUNC2(struct machine *self,
					    struct thread *thr,
					    struct branch_stack *bs)
{
	struct branch_info *bi;
	unsigned int i;

	bi = FUNC0(bs->nr, sizeof(struct branch_info));
	if (!bi)
		return NULL;

	for (i = 0; i < bs->nr; i++) {
		FUNC1(self, thr, &bi[i].to, bs->entries[i].to);
		FUNC1(self, thr, &bi[i].from, bs->entries[i].from);
		bi[i].flags = bs->entries[i].flags;
	}
	return bi;
}