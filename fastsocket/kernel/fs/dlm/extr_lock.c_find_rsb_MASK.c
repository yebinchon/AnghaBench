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
typedef  int uint32_t ;
struct dlm_rsb {int res_hash; int res_bucket; int res_nodeid; int /*<<< orphan*/  res_hashchain; int /*<<< orphan*/  res_ref; } ;
struct dlm_ls {int ls_rsbtbl_size; TYPE_1__* ls_rsbtbl; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int DLM_RESNAME_MAXLEN ; 
 int EBADR ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTBLK ; 
 unsigned int R_CREATE ; 
 int FUNC0 (struct dlm_ls*,char*,int,int,int /*<<< orphan*/ ,struct dlm_rsb**) ; 
 struct dlm_rsb* FUNC1 (struct dlm_ls*,char*,int) ; 
 int FUNC2 (struct dlm_rsb*) ; 
 int /*<<< orphan*/  FUNC3 (struct dlm_rsb*) ; 
 scalar_t__ FUNC4 (struct dlm_ls*) ; 
 int FUNC5 () ; 
 int FUNC6 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct dlm_ls*,char*,int,int,unsigned int,struct dlm_rsb**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct dlm_ls *ls, char *name, int namelen,
		    unsigned int flags, struct dlm_rsb **r_ret)
{
	struct dlm_rsb *r = NULL, *tmp;
	uint32_t hash, bucket;
	int error = -EINVAL;

	if (namelen > DLM_RESNAME_MAXLEN)
		goto out;

	if (FUNC4(ls))
		flags |= R_CREATE;

	error = 0;
	hash = FUNC6(name, namelen, 0);
	bucket = hash & (ls->ls_rsbtbl_size - 1);

	error = FUNC9(ls, name, namelen, bucket, flags, &r);
	if (!error)
		goto out;

	if (error == -EBADR && !(flags & R_CREATE))
		goto out;

	/* the rsb was found but wasn't a master copy */
	if (error == -ENOTBLK)
		goto out;

	error = -ENOMEM;
	r = FUNC1(ls, name, namelen);
	if (!r)
		goto out;

	r->res_hash = hash;
	r->res_bucket = bucket;
	r->res_nodeid = -1;
	FUNC7(&r->res_ref);

	/* With no directory, the master can be set immediately */
	if (FUNC4(ls)) {
		int nodeid = FUNC2(r);
		if (nodeid == FUNC5())
			nodeid = 0;
		r->res_nodeid = nodeid;
	}

	FUNC10(&ls->ls_rsbtbl[bucket].lock);
	error = FUNC0(ls, name, namelen, bucket, 0, &tmp);
	if (!error) {
		FUNC11(&ls->ls_rsbtbl[bucket].lock);
		FUNC3(r);
		r = tmp;
		goto out;
	}
	FUNC8(&r->res_hashchain, &ls->ls_rsbtbl[bucket].list);
	FUNC11(&ls->ls_rsbtbl[bucket].lock);
	error = 0;
 out:
	*r_ret = r;
	return error;
}