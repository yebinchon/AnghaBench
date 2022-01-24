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
struct smb_request {int /*<<< orphan*/  rq_header; } ;
struct kstatfs {long f_blocks; long f_bavail; long f_bfree; int /*<<< orphan*/  f_bsize; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct smb_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 long SMB_ST_BLKSHIFT ; 
 int /*<<< orphan*/  SMB_ST_BLKSIZE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SMBdskattr ; 
 long FUNC2 (char*,int) ; 
 struct smb_request* FUNC3 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC7(struct dentry *dentry, struct kstatfs *attr)
{
	struct smb_sb_info *server = FUNC0(dentry->d_sb);
	int result;
	char *p;
	long unit;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC3(server, 0)))
		goto out;

	FUNC6(req, SMBdskattr, 0, 0);
	if ((result = FUNC4(req, SMBdskattr, 5, 0)) < 0)
		goto out_free;
	p = FUNC1(req->rq_header);
	unit = (FUNC2(p, 2) * FUNC2(p, 4)) >> SMB_ST_BLKSHIFT;
	attr->f_blocks = FUNC2(p, 0) * unit;
	attr->f_bsize  = SMB_ST_BLKSIZE;
	attr->f_bavail = attr->f_bfree = FUNC2(p, 6) * unit;
	result = 0;

out_free:
	FUNC5(req);
out:
	return result;
}