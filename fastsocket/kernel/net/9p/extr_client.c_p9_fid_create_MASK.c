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
struct p9_qid {int dummy; } ;
struct p9_fid {int fid; int mode; int /*<<< orphan*/  flist; int /*<<< orphan*/ * rdir; struct p9_client* clnt; int /*<<< orphan*/  uid; int /*<<< orphan*/  qid; } ;
struct p9_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  fidlist; int /*<<< orphan*/  fidpool; } ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOSPC ; 
 struct p9_fid* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  P9_DEBUG_FID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,struct p9_client*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 struct p9_fid* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct p9_fid *FUNC10(struct p9_client *clnt)
{
	int ret;
	struct p9_fid *fid;
	unsigned long flags;

	FUNC1(P9_DEBUG_FID, "clnt %p\n", clnt);
	fid = FUNC4(sizeof(struct p9_fid), GFP_KERNEL);
	if (!fid)
		return FUNC0(-ENOMEM);

	ret = FUNC7(clnt->fidpool);
	if (ret < 0) {
		ret = -ENOSPC;
		goto error;
	}
	fid->fid = ret;

	FUNC6(&fid->qid, 0, sizeof(struct p9_qid));
	fid->mode = -1;
	fid->uid = FUNC2();
	fid->clnt = clnt;
	fid->rdir = NULL;
	FUNC8(&clnt->lock, flags);
	FUNC5(&fid->flist, &clnt->fidlist);
	FUNC9(&clnt->lock, flags);

	return fid;

error:
	FUNC3(fid);
	return FUNC0(ret);
}