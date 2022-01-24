#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; char* rq_data; int rq_lparm; char* rq_parm; scalar_t__ rq_rcls; int rq_err; scalar_t__ rq_flags; int /*<<< orphan*/  rq_trans2_command; } ;
struct TYPE_6__ {void* tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_5__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct TYPE_4__ {scalar_t__ tv_nsec; void* tv_sec; } ;
struct smb_fattr {int attr; int /*<<< orphan*/  f_size; TYPE_3__ f_mtime; TYPE_2__ f_atime; TYPE_1__ f_ctime; } ;
struct dentry {int dummy; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int) ; 
 scalar_t__ SMB_MAXPATHLEN ; 
 int /*<<< orphan*/  TRANSACT2_FINDFIRST ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int) ; 
 int FUNC5 (char*,int) ; 
 int aDIR ; 
 int aHIDDEN ; 
 int aSYSTEM ; 
 void* FUNC6 (struct smb_sb_info*,int,int) ; 
 int FUNC7 (struct smb_request*) ; 
 struct smb_request* FUNC8 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct smb_request*) ; 

__attribute__((used)) static int
FUNC12(struct smb_sb_info *server, struct dentry *dentry,
			struct smb_fattr *fattr)
{
	char *param, *mask;
	__u16 date, time;
	int mask_len, result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC8(server, PAGE_SIZE)))
		goto out;
	param = req->rq_buffer;
	mask = param + 12;

	mask_len = FUNC9(server, mask, SMB_MAXPATHLEN+1, dentry,NULL);
	if (mask_len < 0) {
		result = mask_len;
		goto out_free;
	}
	FUNC3("name=%s, len=%d\n", mask, mask_len);
	FUNC4(param, 0, aSYSTEM | aHIDDEN | aDIR);
	FUNC4(param, 2, 1);	/* max count */
	FUNC4(param, 4, 1);	/* close after this call */
	FUNC4(param, 6, 1);	/* info_level */
	FUNC0(param, 8, 0);

	req->rq_trans2_command = TRANSACT2_FINDFIRST;
	req->rq_ldata = 0;
	req->rq_data  = NULL;
	req->rq_lparm = 12 + mask_len;
	req->rq_parm  = param;
	req->rq_flags = 0;
	result = FUNC7(req);
	if (result < 0)
		goto out_free;
	if (req->rq_rcls != 0) {
		result = FUNC10(req);
#ifdef SMBFS_PARANOIA
		if (result != -ENOENT)
			PARANOIA("error for %s, rcls=%d, err=%d\n",
				 mask, req->rq_rcls, req->rq_err);
#endif
		goto out_free;
	}
	/* Make sure we got enough data ... */
	result = -EINVAL;
	if (req->rq_ldata < 22 || FUNC5(req->rq_parm, 2) != 1) {
		FUNC2("bad result for %s, len=%d, count=%d\n",
			 mask, req->rq_ldata, FUNC5(req->rq_parm, 2));
		goto out_free;
	}

	/*
	 * Decode the response into the fattr ...
	 */
	date = FUNC5(req->rq_data, 0);
	time = FUNC5(req->rq_data, 2);
	fattr->f_ctime.tv_sec = FUNC6(server, date, time);
	fattr->f_ctime.tv_nsec = 0;

	date = FUNC5(req->rq_data, 4);
	time = FUNC5(req->rq_data, 6);
	fattr->f_atime.tv_sec = FUNC6(server, date, time);
	fattr->f_atime.tv_nsec = 0;

	date = FUNC5(req->rq_data, 8);
	time = FUNC5(req->rq_data, 10);
	fattr->f_mtime.tv_sec = FUNC6(server, date, time);
	fattr->f_mtime.tv_nsec = 0;
	FUNC3("name=%s, date=%x, time=%x, mtime=%ld\n",
		mask, date, time, fattr->f_mtime.tv_sec);
	fattr->f_size = FUNC1(req->rq_data, 12);
	/* ULONG allocation size */
	fattr->attr = FUNC5(req->rq_data, 20);
	result = 0;

out_free:
	FUNC11(req);
out:
	return result;
}