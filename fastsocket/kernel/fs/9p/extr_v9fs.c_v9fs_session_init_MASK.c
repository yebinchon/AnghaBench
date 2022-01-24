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
struct v9fs_session_info {int flags; int /*<<< orphan*/  uid; void* aname; void* uname; struct p9_fid* clnt; scalar_t__ maxdata; int /*<<< orphan*/  dfltgid; int /*<<< orphan*/  dfltuid; int /*<<< orphan*/  slist; } ;
struct p9_fid {int /*<<< orphan*/  uid; scalar_t__ msize; int /*<<< orphan*/  dotu; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ P9_IOHDRSZ ; 
 int FUNC3 (struct p9_fid*) ; 
 int V9FS_ACCESS_ANY ; 
 int V9FS_ACCESS_MASK ; 
 int V9FS_ACCESS_SINGLE ; 
 int V9FS_ACCESS_USER ; 
 int /*<<< orphan*/  V9FS_DEFANAME ; 
 int /*<<< orphan*/  V9FS_DEFGID ; 
 int /*<<< orphan*/  V9FS_DEFUID ; 
 int /*<<< orphan*/  V9FS_DEFUSER ; 
 int V9FS_EXTENDED ; 
 void* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct p9_fid* FUNC7 (struct p9_fid*,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void*) ; 
 struct p9_fid* FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct v9fs_session_info*) ; 
 int FUNC14 (struct v9fs_session_info*,char*) ; 
 int /*<<< orphan*/  v9fs_sessionlist ; 
 int /*<<< orphan*/  v9fs_sessionlist_lock ; 

struct p9_fid *FUNC15(struct v9fs_session_info *v9ses,
		  const char *dev_name, char *data)
{
	int retval = -EINVAL;
	struct p9_fid *fid;
	int rc;

	v9ses->uname = FUNC4();
	if (!v9ses->uname)
		return FUNC0(-ENOMEM);

	v9ses->aname = FUNC4();
	if (!v9ses->aname) {
		FUNC5(v9ses->uname);
		return FUNC0(-ENOMEM);
	}

	FUNC9(&v9fs_sessionlist_lock);
	FUNC6(&v9ses->slist, &v9fs_sessionlist);
	FUNC10(&v9fs_sessionlist_lock);

	v9ses->flags = V9FS_EXTENDED | V9FS_ACCESS_USER;
	FUNC11(v9ses->uname, V9FS_DEFUSER);
	FUNC11(v9ses->aname, V9FS_DEFANAME);
	v9ses->uid = ~0;
	v9ses->dfltuid = V9FS_DEFUID;
	v9ses->dfltgid = V9FS_DEFGID;

	rc = FUNC14(v9ses, data);
	if (rc < 0) {
		retval = rc;
		goto error;
	}

	v9ses->clnt = FUNC8(dev_name, data);
	if (FUNC1(v9ses->clnt)) {
		retval = FUNC3(v9ses->clnt);
		v9ses->clnt = NULL;
		FUNC2(P9_DEBUG_ERROR, "problem initializing 9p client\n");
		goto error;
	}

	if (!v9ses->clnt->dotu)
		v9ses->flags &= ~V9FS_EXTENDED;

	v9ses->maxdata = v9ses->clnt->msize - P9_IOHDRSZ;

	/* for legacy mode, fall back to V9FS_ACCESS_ANY */
	if (!FUNC13(v9ses) &&
		((v9ses->flags&V9FS_ACCESS_MASK) == V9FS_ACCESS_USER)) {

		v9ses->flags &= ~V9FS_ACCESS_MASK;
		v9ses->flags |= V9FS_ACCESS_ANY;
		v9ses->uid = ~0;
	}

	fid = FUNC7(v9ses->clnt, NULL, v9ses->uname, ~0,
							v9ses->aname);
	if (FUNC1(fid)) {
		retval = FUNC3(fid);
		fid = NULL;
		FUNC2(P9_DEBUG_ERROR, "cannot attach\n");
		goto error;
	}

	if ((v9ses->flags & V9FS_ACCESS_MASK) == V9FS_ACCESS_SINGLE)
		fid->uid = v9ses->uid;
	else
		fid->uid = ~0;

#ifdef CONFIG_9P_FSCACHE
	/* register the session for caching */
	v9fs_cache_session_get_cookie(v9ses);
#endif

	return fid;

error:
	return FUNC0(retval);
}