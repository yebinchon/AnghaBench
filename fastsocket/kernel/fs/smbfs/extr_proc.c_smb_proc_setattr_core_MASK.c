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
struct smb_request {int rq_bufsize; scalar_t__ rq_buffer; int /*<<< orphan*/  rq_header; } ;
struct dentry {int dummy; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENAMETOOLONG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMBsetatr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_request* FUNC2 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*,char*) ; 
 char* FUNC6 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_request*,char**,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  smb_vwv3 ; 
 int /*<<< orphan*/  smb_vwv4 ; 
 int /*<<< orphan*/  smb_vwv5 ; 
 int /*<<< orphan*/  smb_vwv6 ; 
 int /*<<< orphan*/  smb_vwv7 ; 

__attribute__((used)) static int
FUNC8(struct smb_sb_info *server, struct dentry *dentry,
		      __u16 attr)
{
	char *p;
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC2(server, PAGE_SIZE)))
		goto out;

	p = FUNC6(req, SMBsetatr, 8, 0);
	FUNC1(req->rq_header, smb_vwv0, attr);
	FUNC0(req->rq_header, smb_vwv1, 0); /* mtime */
	FUNC1(req->rq_header, smb_vwv3, 0); /* reserved values */
	FUNC1(req->rq_header, smb_vwv4, 0);
	FUNC1(req->rq_header, smb_vwv5, 0);
	FUNC1(req->rq_header, smb_vwv6, 0);
	FUNC1(req->rq_header, smb_vwv7, 0);
	result = FUNC7(req, &p, dentry, NULL);
	if (result < 0)
		goto out_free;
	if (p + 2 > (char *)req->rq_buffer + req->rq_bufsize) {
		result = -ENAMETOOLONG;
		goto out_free;
	}
	*p++ = 4;
	*p++ = 0;
	FUNC5(req, p);

	result = FUNC3(req, SMBsetatr, 0, 0);
	if (result < 0)
		goto out_free;
	result = 0;

out_free:
	FUNC4(req);
out:
	return result;
}