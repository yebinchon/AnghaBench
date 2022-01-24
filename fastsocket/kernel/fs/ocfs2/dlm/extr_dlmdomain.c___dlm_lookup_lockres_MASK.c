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
struct dlm_lock_resource {int state; int /*<<< orphan*/  spinlock; } ;
struct dlm_ctxt {int /*<<< orphan*/  spinlock; } ;

/* Variables and functions */
 int DLM_LOCK_RES_DROPPING_REF ; 
 struct dlm_lock_resource* FUNC0 (struct dlm_ctxt*,char const*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dlm_lock_resource*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct dlm_lock_resource * FUNC6(struct dlm_ctxt *dlm,
						const char *name,
						unsigned int len,
						unsigned int hash)
{
	struct dlm_lock_resource *res = NULL;

	FUNC3("%.*s\n", len, name);

	FUNC1(&dlm->spinlock);

	res = FUNC0(dlm, name, len, hash);
	if (res) {
		FUNC4(&res->spinlock);
		if (res->state & DLM_LOCK_RES_DROPPING_REF) {
			FUNC5(&res->spinlock);
			FUNC2(res);
			return NULL;
		}
		FUNC5(&res->spinlock);
	}

	return res;
}