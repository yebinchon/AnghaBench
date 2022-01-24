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
struct hfsc_class {int cl_flags; TYPE_1__* sched; int /*<<< orphan*/  dlist; } ;
struct TYPE_2__ {int /*<<< orphan*/  droplist; } ;

/* Variables and functions */
 int HFSC_FSC ; 
 int HFSC_RSC ; 
 int /*<<< orphan*/  FUNC0 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct hfsc_class*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct hfsc_class *cl, unsigned int len)
{
	if (cl->cl_flags & HFSC_RSC)
		FUNC0(cl, len);
	if (cl->cl_flags & HFSC_FSC)
		FUNC1(cl, len);

	FUNC2(&cl->dlist, &cl->sched->droplist);
}