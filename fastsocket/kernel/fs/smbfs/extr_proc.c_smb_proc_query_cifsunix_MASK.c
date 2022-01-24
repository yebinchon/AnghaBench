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
typedef  int /*<<< orphan*/  u64 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_ldata; int rq_lparm; char* rq_parm; int /*<<< orphan*/ * rq_data; scalar_t__ rq_flags; int /*<<< orphan*/  rq_trans2_command; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  SMB_QUERY_CIFS_UNIX_INFO ; 
 int /*<<< orphan*/  TRANSACT2_QFSINFO ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (struct smb_request*) ; 
 struct smb_request* FUNC6 (struct smb_sb_info*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_request*) ; 

__attribute__((used)) static int
FUNC8(struct smb_sb_info *server)
{
	int result;
	int major, minor;
	u64 caps;
	char param[2];
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC6(server, 100)))
		goto out;

	FUNC3(param, 0, SMB_QUERY_CIFS_UNIX_INFO);

	req->rq_trans2_command = TRANSACT2_QFSINFO;
	req->rq_ldata = 0;
	req->rq_data  = NULL;
	req->rq_lparm = 2;
	req->rq_parm  = param;
	req->rq_flags = 0;
	result = FUNC5(req);
	if (result < 0)
		goto out_free;

	if (req->rq_ldata < 12) {
		FUNC2("Not enough data\n");
		goto out_free;
	}
	major = FUNC4(req->rq_data, 0);
	minor = FUNC4(req->rq_data, 2);

	FUNC0("Server implements CIFS Extensions for UNIX systems v%d.%d\n",
	       major, minor);
	/* FIXME: verify that we are ok with this major/minor? */

	caps = FUNC1(req->rq_data, 4);
	FUNC0("Server capabilities 0x%016llx\n", caps);

out_free:
	FUNC7(req);
out:
	return result;
}