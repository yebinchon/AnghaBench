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
struct v9fs_session_info {int /*<<< orphan*/  slist; int /*<<< orphan*/  aname; int /*<<< orphan*/  uname; int /*<<< orphan*/  cachetag; scalar_t__ fscache; int /*<<< orphan*/ * clnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  v9fs_sessionlist_lock ; 

void FUNC7(struct v9fs_session_info *v9ses)
{
	if (v9ses->clnt) {
		FUNC3(v9ses->clnt);
		v9ses->clnt = NULL;
	}

#ifdef CONFIG_9P_FSCACHE
	if (v9ses->fscache) {
		v9fs_cache_session_put_cookie(v9ses);
		kfree(v9ses->cachetag);
	}
#endif
	FUNC0(v9ses->uname);
	FUNC0(v9ses->aname);

	FUNC4(&v9fs_sessionlist_lock);
	FUNC2(&v9ses->slist);
	FUNC5(&v9fs_sessionlist_lock);
}