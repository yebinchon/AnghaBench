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
struct hfsc_class {scalar_t__ cl_cumul; int /*<<< orphan*/  cl_deadline; void* cl_d; int /*<<< orphan*/  cl_eligible; void* cl_e; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hfsc_class*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static void
FUNC2(struct hfsc_class *cl, unsigned int next_len)
{
	cl->cl_e = FUNC1(&cl->cl_eligible, cl->cl_cumul);
	cl->cl_d = FUNC1(&cl->cl_deadline, cl->cl_cumul + next_len);

	FUNC0(cl);
}