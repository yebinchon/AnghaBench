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
struct smb_request {int /*<<< orphan*/  rq_flags; int /*<<< orphan*/  rq_header; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  SMB_REQ_NORETRY ; 
 int /*<<< orphan*/  SMBflush ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_request* FUNC1 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_vwv0 ; 

int
FUNC5(struct smb_sb_info *server, __u16 fileid)
{
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC1(server, 0)))
		goto out;

	FUNC4(req, SMBflush, 1, 0);
	FUNC0(req->rq_header, smb_vwv0, fileid);
	req->rq_flags |= SMB_REQ_NORETRY;
	result = FUNC2(req, SMBflush, 0, 0);

	FUNC3(req);
out:
	return result;
}