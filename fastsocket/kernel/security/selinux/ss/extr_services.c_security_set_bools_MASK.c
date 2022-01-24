#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct cond_node {struct cond_node* next; } ;
struct TYPE_11__ {int /*<<< orphan*/  audit_context; } ;
struct TYPE_8__ {int nprim; } ;
struct TYPE_10__ {struct cond_node* cond_list; TYPE_2__** bool_val_to_struct; int /*<<< orphan*/ * p_bool_val_to_name; TYPE_1__ p_bools; } ;
struct TYPE_9__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_CONFIG_CHANGE ; 
 int EFAULT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_5__* current ; 
 int FUNC4 (TYPE_3__*,struct cond_node*) ; 
 int latest_granting ; 
 int /*<<< orphan*/  policy_rwlock ; 
 TYPE_3__ policydb ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

int FUNC10(int len, int *values)
{
	int i, rc = 0;
	int lenp, seqno = 0;
	struct cond_node *cur;

	FUNC8(&policy_rwlock);

	lenp = policydb.p_bools.nprim;
	if (len != lenp) {
		rc = -EFAULT;
		goto out;
	}

	for (i = 0; i < len; i++) {
		if (!!values[i] != policydb.bool_val_to_struct[i]->state) {
			FUNC2(current->audit_context, GFP_ATOMIC,
				AUDIT_MAC_CONFIG_CHANGE,
				"bool=%s val=%d old_val=%d auid=%u ses=%u",
				policydb.p_bool_val_to_name[i],
				!!values[i],
				policydb.bool_val_to_struct[i]->state,
				FUNC0(current),
				FUNC1(current));
		}
		if (values[i])
			policydb.bool_val_to_struct[i]->state = 1;
		else
			policydb.bool_val_to_struct[i]->state = 0;
	}

	for (cur = policydb.cond_list; cur; cur = cur->next) {
		rc = FUNC4(&policydb, cur);
		if (rc)
			goto out;
	}

	seqno = ++latest_granting;

out:
	FUNC9(&policy_rwlock);
	if (!rc) {
		FUNC3(seqno);
		FUNC7(seqno);
		FUNC5(seqno);
		FUNC6();
	}
	return rc;
}