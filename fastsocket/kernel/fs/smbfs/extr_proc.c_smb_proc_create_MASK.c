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
typedef  int /*<<< orphan*/  time_t ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int /*<<< orphan*/  rq_header; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMBcreate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_sb_info* FUNC3 (struct dentry*) ; 
 struct smb_request* FUNC4 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_request*,char*) ; 
 char* FUNC8 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct smb_request*,char**,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  FUNC10 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 

int
FUNC11(struct dentry *dentry, __u16 attr, time_t ctime, __u16 *fileid)
{
	struct smb_sb_info *server = FUNC3(dentry);
	char *p;
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC4(server, PAGE_SIZE)))
		goto out;

	p = FUNC8(req, SMBcreate, 3, 0);
	FUNC1(req->rq_header, smb_vwv0, attr);
	FUNC0(req->rq_header, smb_vwv1, FUNC10(server, ctime));
	result = FUNC9(req, &p, dentry, NULL);
	if (result < 0)
		goto out_free;
	FUNC7(req, p);

	result = FUNC5(req, SMBcreate, 1, 0);
	if (result < 0)
		goto out_free;

	*fileid = FUNC2(req->rq_header, smb_vwv0);
	result = 0;

out_free:
	FUNC6(req);
out:
	return result;
}