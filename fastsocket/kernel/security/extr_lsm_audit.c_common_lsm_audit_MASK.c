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
struct common_audit_data {int /*<<< orphan*/  (* lsm_post_audit ) (struct audit_buffer*,struct common_audit_data*) ;int /*<<< orphan*/  (* lsm_pre_audit ) (struct audit_buffer*,struct common_audit_data*) ;} ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  audit_context; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_AVC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 struct audit_buffer* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct audit_buffer*,struct common_audit_data*) ; 

void FUNC5(struct common_audit_data *a)
{
	struct audit_buffer *ab;

	if (a == NULL)
		return;
	/* we use GFP_ATOMIC so we won't sleep */
	ab = FUNC1(current->audit_context, GFP_ATOMIC, AUDIT_AVC);

	if (ab == NULL)
		return;

	if (a->lsm_pre_audit)
		a->lsm_pre_audit(ab, a);

	FUNC2(ab, a);

	if (a->lsm_post_audit)
		a->lsm_post_audit(ab, a);

	FUNC0(ab);
}