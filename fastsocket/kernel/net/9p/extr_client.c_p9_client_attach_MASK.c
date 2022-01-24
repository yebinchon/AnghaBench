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
typedef  int /*<<< orphan*/  u32 ;
struct p9_req_t {int fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; } ;
struct p9_qid {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_fid {int fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; } ;
struct p9_client {int /*<<< orphan*/  dotu; } ;

/* Variables and functions */
 struct p9_req_t* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int P9_NOFID ; 
 int /*<<< orphan*/  P9_TATTACH ; 
 int FUNC3 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p9_qid*,int) ; 
 struct p9_req_t* FUNC5 (struct p9_client*,int /*<<< orphan*/ ,char*,int,int,char*,char*,int /*<<< orphan*/ ) ; 
 struct p9_req_t* FUNC6 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 

struct p9_fid *FUNC11(struct p9_client *clnt, struct p9_fid *afid,
	char *uname, u32 n_uname, char *aname)
{
	int err;
	struct p9_req_t *req;
	struct p9_fid *fid;
	struct p9_qid qid;

	FUNC2(P9_DEBUG_9P, ">>> TATTACH afid %d uname %s aname %s\n",
					afid ? afid->fid : -1, uname, aname);
	err = 0;

	fid = FUNC6(clnt);
	if (FUNC1(fid)) {
		err = FUNC3(fid);
		fid = NULL;
		goto error;
	}

	req = FUNC5(clnt, P9_TATTACH, "ddss?d", fid->fid,
			afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
	if (FUNC1(req)) {
		err = FUNC3(req);
		goto error;
	}

	err = FUNC10(req->rc, clnt->dotu, "Q", &qid);
	if (err) {
		FUNC9(1, req->rc);
		FUNC8(clnt, req);
		goto error;
	}

	FUNC2(P9_DEBUG_9P, "<<< RATTACH qid %x.%llx.%x\n",
					qid.type,
					(unsigned long long)qid.path,
					qid.version);

	FUNC4(&fid->qid, &qid, sizeof(struct p9_qid));

	FUNC8(clnt, req);
	return fid;

error:
	if (fid)
		FUNC7(fid);
	return FUNC0(err);
}