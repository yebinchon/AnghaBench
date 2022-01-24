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
struct p9_req_t {int fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; int /*<<< orphan*/  uid; struct p9_client* clnt; } ;
struct p9_qid {int type; char* version; scalar_t__ path; } ;
struct p9_fid {int fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  rc; int /*<<< orphan*/  uid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  dotu; } ;
typedef  int int16_t ;

/* Variables and functions */
 int ENOENT ; 
 struct p9_req_t* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  P9_TWALK ; 
 int FUNC3 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p9_qid*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC6 (struct p9_client*,int /*<<< orphan*/ ,char*,int,int,int,char**) ; 
 struct p9_req_t* FUNC7 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_client*,struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int*,struct p9_qid**) ; 

struct p9_fid *FUNC12(struct p9_fid *oldfid, int nwname, char **wnames,
	int clone)
{
	int err;
	struct p9_client *clnt;
	struct p9_fid *fid;
	struct p9_qid *wqids;
	struct p9_req_t *req;
	int16_t nwqids, count;

	err = 0;
	clnt = oldfid->clnt;
	if (clone) {
		fid = FUNC7(clnt);
		if (FUNC1(fid)) {
			err = FUNC3(fid);
			fid = NULL;
			goto error;
		}

		fid->uid = oldfid->uid;
	} else
		fid = oldfid;


	FUNC2(P9_DEBUG_9P, ">>> TWALK fids %d,%d nwname %d wname[0] %s\n",
		oldfid->fid, fid->fid, nwname, wnames ? wnames[0] : NULL);

	req = FUNC6(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
								nwname, wnames);
	if (FUNC1(req)) {
		err = FUNC3(req);
		goto error;
	}

	err = FUNC11(req->rc, clnt->dotu, "R", &nwqids, &wqids);
	if (err) {
		FUNC10(1, req->rc);
		FUNC9(clnt, req);
		goto clunk_fid;
	}
	FUNC9(clnt, req);

	FUNC2(P9_DEBUG_9P, "<<< RWALK nwqid %d:\n", nwqids);

	if (nwqids != nwname) {
		err = -ENOENT;
		goto clunk_fid;
	}

	for (count = 0; count < nwqids; count++)
		FUNC2(P9_DEBUG_9P, "<<<     [%d] %x.%llx.%x\n",
			count, wqids[count].type,
			(unsigned long long)wqids[count].path,
			wqids[count].version);

	if (nwname)
		FUNC4(&fid->qid, &wqids[nwqids - 1], sizeof(struct p9_qid));
	else
		fid->qid = oldfid->qid;

	return fid;

clunk_fid:
	FUNC5(fid);
	fid = NULL;

error:
	if (fid && (fid != oldfid))
		FUNC8(fid);

	return FUNC0(err);
}