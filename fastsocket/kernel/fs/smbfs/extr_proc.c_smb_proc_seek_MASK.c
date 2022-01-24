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
struct smb_request {int /*<<< orphan*/  rq_header; int /*<<< orphan*/  rq_flags; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMB_REQ_NORETRY ; 
 int /*<<< orphan*/  SMBlseek ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_request* FUNC3 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  smb_vwv2 ; 

__attribute__((used)) static int
FUNC7(struct smb_sb_info *server, __u16 fileid,
	      __u16 mode, off_t offset)
{
	int result;
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC3(server, 0)))
		goto out;

	FUNC6(req, SMBlseek, 4, 0);
	FUNC2(req->rq_header, smb_vwv0, fileid);
	FUNC2(req->rq_header, smb_vwv1, mode);
	FUNC0(req->rq_header, smb_vwv2, offset);
	req->rq_flags |= SMB_REQ_NORETRY;

	result = FUNC4(req, SMBlseek, 2, 0);
	if (result < 0) {
		result = 0;
		goto out_free;
	}

	result = FUNC1(req->rq_header, smb_vwv0);
out_free:
	FUNC5(req);
out:
	return result;
}