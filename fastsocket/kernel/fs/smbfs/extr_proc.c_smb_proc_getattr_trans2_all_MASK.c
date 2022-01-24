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
struct smb_request {int /*<<< orphan*/  rq_data; } ;
struct smb_fattr {int /*<<< orphan*/  f_size; int /*<<< orphan*/  attr; void* f_mtime; void* f_atime; void* f_ctime; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  SMB_QUERY_FILE_ALL_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct smb_request* FUNC2 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_sb_info*,struct dentry*,struct smb_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*) ; 

__attribute__((used)) static int
FUNC6(struct smb_sb_info *server, struct dentry *dir,
			    struct smb_fattr *attr)
{
	struct smb_request *req;
	int result;

	result = -ENOMEM;
	if (! (req = FUNC2(server, PAGE_SIZE)))
		goto out;

	result = FUNC4(server, dir, req,
					 SMB_QUERY_FILE_ALL_INFO);
	if (result < 0)
		goto out_free;

	attr->f_ctime = FUNC3(FUNC0(req->rq_data, 0));
	attr->f_atime = FUNC3(FUNC0(req->rq_data, 8));
	attr->f_mtime = FUNC3(FUNC0(req->rq_data, 16));
	/* change (24) */
	attr->attr = FUNC1(req->rq_data, 32);
	/* pad? (34) */
	/* allocated size (40) */
	attr->f_size = FUNC0(req->rq_data, 48);

out_free:
	FUNC5(req);
out:
	return result;
}