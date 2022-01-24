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
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMBmv ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int aDIR ; 
 int aHIDDEN ; 
 int aSYSTEM ; 
 struct smb_sb_info* FUNC1 (struct dentry*) ; 
 struct smb_request* FUNC2 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*,char*) ; 
 char* FUNC6 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_request*,char**,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smb_vwv0 ; 

int
FUNC8(struct dentry *old_dentry, struct dentry *new_dentry)
{
	struct smb_sb_info *server = FUNC1(old_dentry);
	char *p;
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC2(server, PAGE_SIZE)))
		goto out;

	p = FUNC6(req, SMBmv, 1, 0);
	FUNC0(req->rq_header, smb_vwv0, aSYSTEM | aHIDDEN | aDIR);
	result = FUNC7(req, &p, old_dentry, NULL);
	if (result < 0)
		goto out_free;
	result = FUNC7(req, &p, new_dentry, NULL);
	if (result < 0)
		goto out_free;
	FUNC5(req, p);

	if ((result = FUNC3(req, SMBmv, 0, 0)) < 0)
		goto out_free;
	result = 0;

out_free:
	FUNC4(req);
out:
	return result;
}