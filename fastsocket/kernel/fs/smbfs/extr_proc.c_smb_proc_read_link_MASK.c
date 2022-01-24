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
struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; int rq_lparm; char* rq_parm; int /*<<< orphan*/ * rq_data; int /*<<< orphan*/  rq_err; int /*<<< orphan*/  rq_rcls; scalar_t__ rq_flags; int /*<<< orphan*/  rq_trans2_command; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SMB_MAXPATHLEN ; 
 int /*<<< orphan*/  SMB_QUERY_FILE_UNIX_LINK ; 
 int /*<<< orphan*/  TRANSACT2_QPATHINFO ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_request*) ; 
 struct smb_request* FUNC5 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ *,int) ; 

int
FUNC9(struct smb_sb_info *server, struct dentry *d,
		   char *buffer, int len)
{
	char *p, *param;
	int result;
	struct smb_request *req;

	FUNC0("readlink of %s/%s\n", FUNC1(d));

	result = -ENOMEM;
	if (! (req = FUNC5(server, PAGE_SIZE)))
		goto out;
	param = req->rq_buffer;

	FUNC3(param, 0, SMB_QUERY_FILE_UNIX_LINK);
	FUNC2(param, 2, 0);
	result = FUNC6(server, param+6, SMB_MAXPATHLEN+1, d, NULL);
	if (result < 0)
		goto out_free;
	p = param + 6 + result;

	req->rq_trans2_command = TRANSACT2_QPATHINFO;
	req->rq_ldata = 0;
	req->rq_data  = NULL;
	req->rq_lparm = p - param;
	req->rq_parm  = param;
	req->rq_flags = 0;
	result = FUNC4(req);
	if (result < 0)
		goto out_free;
	FUNC0("for %s: result=%d, rcls=%d, err=%d\n",
		&param[6], result, req->rq_rcls, req->rq_err);

	/* copy data up to the \0 or buffer length */
	result = len;
	if (req->rq_ldata < len)
		result = req->rq_ldata;
	FUNC8(buffer, req->rq_data, result);

out_free:
	FUNC7(req);
out:
	return result;
}