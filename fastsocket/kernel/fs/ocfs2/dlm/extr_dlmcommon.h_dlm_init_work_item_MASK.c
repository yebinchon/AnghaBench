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
struct dlm_work_item {struct dlm_ctxt* dlm; void* data; int /*<<< orphan*/  list; int /*<<< orphan*/ * func; } ;
struct dlm_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  dlm_workfunc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_work_item*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(struct dlm_ctxt *dlm,
				      struct dlm_work_item *i,
				      dlm_workfunc_t *f, void *data)
{
	FUNC1(i, 0, sizeof(*i));
	i->func = f;
	FUNC0(&i->list);
	i->data = data;
	i->dlm = dlm;  /* must have already done a dlm_grab on this! */
}