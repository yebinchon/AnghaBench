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
struct smb_request {char* rq_buffer; char* rq_data; int rq_lparm; char* rq_parm; int /*<<< orphan*/  rq_err; int /*<<< orphan*/  rq_rcls; scalar_t__ rq_flags; int /*<<< orphan*/  rq_trans2_command; void* rq_ldata; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ SMB_MAXPATHLEN ; 
 int /*<<< orphan*/  SMB_SET_FILE_UNIX_HLINK ; 
 int /*<<< orphan*/  TRANSACT2_SETPATHINFO ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smb_request*) ; 
 struct smb_request* FUNC4 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 void* FUNC5 (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_request*) ; 

int
FUNC7(struct smb_sb_info *server, struct dentry *dentry,
	      struct dentry *new_dentry)
{
	char *p, *param;
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC4(server, PAGE_SIZE)))
		goto out;
	param = req->rq_buffer;

	FUNC2(param, 0, SMB_SET_FILE_UNIX_HLINK);
	FUNC1(param, 2, 0);
	result = FUNC5(server, param + 6, SMB_MAXPATHLEN+1,
				 new_dentry, NULL);
	if (result < 0)
		goto out_free;
	p = param + 6 + result;

	/* Grr, pointless separation of parameters and data ... */
	req->rq_data = p;
	req->rq_ldata = FUNC5(server, p, SMB_MAXPATHLEN+1,
					dentry, NULL);

	req->rq_trans2_command = TRANSACT2_SETPATHINFO;
	req->rq_lparm = p - param;
	req->rq_parm  = param;
	req->rq_flags = 0;
	result = FUNC3(req);
	if (result < 0)
		goto out_free;

	FUNC0("for %s: result=%d, rcls=%d, err=%d\n",
	       &param[6], result, req->rq_rcls, req->rq_err);
	result = 0;

out_free:
	FUNC6(req);
out:
	return result;
}