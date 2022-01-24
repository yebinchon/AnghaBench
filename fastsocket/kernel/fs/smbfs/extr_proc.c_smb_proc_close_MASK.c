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
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SMB_REQ_NORETRY ; 
 int /*<<< orphan*/  SMBclose ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_request* FUNC2 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct smb_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  FUNC6 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int 
FUNC7(struct smb_sb_info *server, __u16 fileid, __u32 mtime)
{
	struct smb_request *req;
	int result = -ENOMEM;

	if (! (req = FUNC2(server, 0)))
		goto out;

	FUNC5(req, SMBclose, 3, 0);
	FUNC1(req->rq_header, smb_vwv0, fileid);
	FUNC0(req->rq_header, smb_vwv1, FUNC6(server, mtime));
	req->rq_flags |= SMB_REQ_NORETRY;
	result = FUNC3(req, SMBclose, 0, 0);

	FUNC4(req);
out:
	return result;
}