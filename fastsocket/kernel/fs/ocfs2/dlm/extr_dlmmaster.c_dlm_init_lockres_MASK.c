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
struct TYPE_2__ {unsigned int len; int /*<<< orphan*/  hash; scalar_t__ name; } ;
struct dlm_lock_resource {int /*<<< orphan*/  refmap; int /*<<< orphan*/  lvb; int /*<<< orphan*/  tracking; scalar_t__ last_used; int /*<<< orphan*/  state; int /*<<< orphan*/  spinlock; int /*<<< orphan*/  refs; struct dlm_ctxt* dlm; scalar_t__ inflight_locks; scalar_t__ migration_pending; int /*<<< orphan*/  asts_reserved; int /*<<< orphan*/  purge; int /*<<< orphan*/  recovering; int /*<<< orphan*/  dirty; int /*<<< orphan*/  blocked; int /*<<< orphan*/  converting; int /*<<< orphan*/  granted; int /*<<< orphan*/  hash_node; int /*<<< orphan*/  wq; TYPE_1__ lockname; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; int /*<<< orphan*/  tracking_list; int /*<<< orphan*/  res_cur_count; int /*<<< orphan*/  res_tot_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  DLM_LOCK_RES_IN_PROGRESS ; 
 int /*<<< orphan*/  DLM_LOCK_RES_OWNER_UNKNOWN ; 
 int DLM_LVB_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dlm_ctxt*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dlm_ctxt*,struct dlm_lock_resource*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct dlm_ctxt *dlm,
			     struct dlm_lock_resource *res,
			     const char *name, unsigned int namelen)
{
	char *qname;

	/* If we memset here, we lose our reference to the kmalloc'd
	 * res->lockname.name, so be sure to init every field
	 * correctly! */

	qname = (char *) res->lockname.name;
	FUNC10(qname, name, namelen);

	res->lockname.len = namelen;
	res->lockname.hash = FUNC5(name, namelen);

	FUNC7(&res->wq);
	FUNC13(&res->spinlock);
	FUNC0(&res->hash_node);
	FUNC1(&res->granted);
	FUNC1(&res->converting);
	FUNC1(&res->blocked);
	FUNC1(&res->dirty);
	FUNC1(&res->recovering);
	FUNC1(&res->purge);
	FUNC1(&res->tracking);
	FUNC3(&res->asts_reserved, 0);
	res->migration_pending = 0;
	res->inflight_locks = 0;

	/* put in dlm_lockres_release */
	FUNC4(dlm);
	res->dlm = dlm;

	FUNC8(&res->refs);

	FUNC2(&dlm->res_tot_count);
	FUNC2(&dlm->res_cur_count);

	/* just for consistency */
	FUNC12(&res->spinlock);
	FUNC6(dlm, res, DLM_LOCK_RES_OWNER_UNKNOWN);
	FUNC14(&res->spinlock);

	res->state = DLM_LOCK_RES_IN_PROGRESS;

	res->last_used = 0;

	FUNC12(&dlm->spinlock);
	FUNC9(&res->tracking, &dlm->tracking_list);
	FUNC14(&dlm->spinlock);

	FUNC11(res->lvb, 0, DLM_LVB_LEN);
	FUNC11(res->refmap, 0, sizeof(res->refmap));
}