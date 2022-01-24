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
struct qstr {int /*<<< orphan*/  hash; } ;
struct hlist_head {int dummy; } ;
struct dlm_lock_resource {int /*<<< orphan*/  hash_node; struct qstr lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dlm_lock_resource*) ; 
 struct hlist_head* FUNC2 (struct dlm_ctxt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct hlist_head*) ; 

void FUNC4(struct dlm_ctxt *dlm,
		       struct dlm_lock_resource *res)
{
	struct hlist_head *bucket;
	struct qstr *q;

	FUNC0(&dlm->spinlock);

	q = &res->lockname;
	bucket = FUNC2(dlm, q->hash);

	/* get a reference for our hashtable */
	FUNC1(res);

	FUNC3(&res->hash_node, bucket);
}