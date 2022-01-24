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
typedef  unsigned int u64 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {char* rq_buffer; int rq_ldata; char* rq_data; int rq_lparm; char* rq_parm; scalar_t__ rq_flags; int /*<<< orphan*/  rq_trans2_command; } ;
struct iattr {int ia_valid; unsigned int ia_mode; unsigned int ia_size; unsigned int ia_uid; unsigned int ia_gid; int /*<<< orphan*/  ia_mtime; int /*<<< orphan*/  ia_atime; int /*<<< orphan*/  ia_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ATTR_ATIME ; 
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_MTIME ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 unsigned int SMB_GID_NO_CHANGE ; 
 scalar_t__ SMB_MAXPATHLEN ; 
 unsigned int SMB_MODE_NO_CHANGE ; 
 int /*<<< orphan*/  SMB_SET_FILE_UNIX_BASIC ; 
 unsigned int SMB_SIZE_NO_CHANGE ; 
 unsigned int SMB_TIME_NO_CHANGE ; 
 unsigned int SMB_UID_NO_CHANGE ; 
 int /*<<< orphan*/  TRANSACT2_SETPATHINFO ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_sb_info* FUNC4 (struct dentry*) ; 
 int FUNC5 (struct smb_request*) ; 
 struct smb_request* FUNC6 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_sb_info*,char*,scalar_t__,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_request*) ; 
 unsigned int FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11(struct dentry *d, struct iattr *attr,
		      unsigned int major, unsigned int minor)
{
	struct smb_sb_info *server = FUNC4(d);
	u64 nttime;
	char *p, *param;
	int result;
	char data[100];
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC6(server, PAGE_SIZE)))
		goto out;
	param = req->rq_buffer;

	FUNC0("valid flags = 0x%04x\n", attr->ia_valid);

	FUNC3(param, 0, SMB_SET_FILE_UNIX_BASIC);
	FUNC1(param, 2, 0);
	result = FUNC7(server, param+6, SMB_MAXPATHLEN+1, d, NULL);
	if (result < 0)
		goto out_free;
	p = param + 6 + result;

	/* 0 L file size in bytes */
	/* 8 L file size on disk in bytes (block count) */
	/* 40 L uid */
	/* 48 L gid */
	/* 56 W file type enum */
	/* 60 L devmajor */
	/* 68 L devminor */
	/* 76 L unique ID (inode) */
	/* 84 L permissions */
	/* 92 L link count */
	FUNC2(data, 0, SMB_SIZE_NO_CHANGE);
	FUNC2(data, 8, SMB_SIZE_NO_CHANGE);
	FUNC2(data, 16, SMB_TIME_NO_CHANGE);
	FUNC2(data, 24, SMB_TIME_NO_CHANGE);
	FUNC2(data, 32, SMB_TIME_NO_CHANGE);
	FUNC2(data, 40, SMB_UID_NO_CHANGE);
	FUNC2(data, 48, SMB_GID_NO_CHANGE);
	FUNC1(data, 56, FUNC8(attr->ia_mode));
	FUNC2(data, 60, major);
	FUNC2(data, 68, minor);
	FUNC2(data, 76, 0);
	FUNC2(data, 84, SMB_MODE_NO_CHANGE);
	FUNC2(data, 92, 0);

	if (attr->ia_valid & ATTR_SIZE) {
		FUNC2(data, 0, attr->ia_size);
		FUNC2(data, 8, 0); /* can't set anyway */
	}

	/*
	 * FIXME: check the conversion function it the correct one
	 *
	 * we can't set ctime but we might as well pass this to the server
	 * and let it ignore it.
	 */
	if (attr->ia_valid & ATTR_CTIME) {
		nttime = FUNC10(attr->ia_ctime);
		FUNC2(data, 16, nttime);
	}
	if (attr->ia_valid & ATTR_ATIME) {
		nttime = FUNC10(attr->ia_atime);
		FUNC2(data, 24, nttime);
	}
	if (attr->ia_valid & ATTR_MTIME) {
		nttime = FUNC10(attr->ia_mtime);
		FUNC2(data, 32, nttime);
	}
	
	if (attr->ia_valid & ATTR_UID) {
		FUNC2(data, 40, attr->ia_uid);
	}
	if (attr->ia_valid & ATTR_GID) {
		FUNC2(data, 48, attr->ia_gid); 
	}
	
	if (attr->ia_valid & ATTR_MODE) {
		FUNC2(data, 84, attr->ia_mode);
	}

	req->rq_trans2_command = TRANSACT2_SETPATHINFO;
	req->rq_ldata = 100;
	req->rq_data  = data;
	req->rq_lparm = p - param;
	req->rq_parm  = param;
	req->rq_flags = 0;
	result = FUNC5(req);

out_free:
	FUNC9(req);
out:
	return result;
}