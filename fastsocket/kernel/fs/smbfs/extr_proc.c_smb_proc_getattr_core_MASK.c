#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smb_sb_info {int dummy; } ;
struct smb_request {int /*<<< orphan*/  rq_header; } ;
struct TYPE_2__ {scalar_t__ tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct smb_fattr {TYPE_1__ f_mtime; TYPE_1__ f_atime; TYPE_1__ f_ctime; int /*<<< orphan*/  f_size; int /*<<< orphan*/  attr; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMBgetatr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_1__) ; 
 struct smb_request* FUNC5 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_request*,char*) ; 
 char* FUNC9 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct smb_request*,char**,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  smb_vwv3 ; 

__attribute__((used)) static int
FUNC11(struct smb_sb_info *server, struct dentry *dir,
		      struct smb_fattr *fattr)
{
	int result;
	char *p;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC5(server, PAGE_SIZE)))
		goto out;

	p = FUNC9(req, SMBgetatr, 0, 0);
	result = FUNC10(req, &p, dir, NULL);
	if (result < 0)
 		goto out_free;
	FUNC8(req, p);

	if ((result = FUNC6(req, SMBgetatr, 10, 0)) < 0)
		goto out_free;
	fattr->attr    = FUNC2(req->rq_header, smb_vwv0);
	fattr->f_mtime.tv_sec = FUNC3(server, FUNC1(req->rq_header, smb_vwv1));
	fattr->f_mtime.tv_nsec = 0;
	fattr->f_size  = FUNC1(req->rq_header, smb_vwv3);
	fattr->f_ctime = fattr->f_mtime; 
	fattr->f_atime = fattr->f_mtime; 
#ifdef SMBFS_DEBUG_TIMESTAMP
	printk("getattr_core: %s/%s, mtime=%ld\n",
	       DENTRY_PATH(dir), fattr->f_mtime);
#endif
	result = 0;

out_free:
	FUNC7(req);
out:
	return result;
}