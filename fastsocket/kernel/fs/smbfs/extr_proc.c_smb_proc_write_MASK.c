#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int* rq_header; int rq_iovlen; int /*<<< orphan*/  rq_flags; TYPE_1__* rq_iov; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_4__ {int fileid; } ;
struct TYPE_3__ {int* iov_base; int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SMB_REQ_NORETRY ; 
 int /*<<< orphan*/  SMBwrite ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int,int) ; 
 int FUNC4 (int*,int) ; 
 struct smb_sb_info* FUNC5 (struct inode*) ; 
 struct smb_request* FUNC6 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_request*) ; 
 int /*<<< orphan*/  FUNC9 (struct smb_request*,int /*<<< orphan*/ ,int,int) ; 
 int smb_vwv0 ; 
 int smb_vwv1 ; 
 int /*<<< orphan*/  smb_vwv2 ; 
 int smb_vwv4 ; 

__attribute__((used)) static int
FUNC10(struct inode *inode, loff_t offset, int count, const char *data)
{
	struct smb_sb_info *server = FUNC5(inode);
	int result;
	u16 fileid = FUNC1(inode)->fileid;
	u8 buf[4];
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC6(server, 0)))
		goto out;

	FUNC2("ino=%ld, fileid=%d, count=%d@%Ld\n",
		inode->i_ino, fileid, count, offset);

	FUNC9(req, SMBwrite, 5, count + 3);
	FUNC3(req->rq_header, smb_vwv0, fileid);
	FUNC3(req->rq_header, smb_vwv1, count);
	FUNC0(req->rq_header, smb_vwv2, offset);
	FUNC3(req->rq_header, smb_vwv4, 0);

	buf[0] = 1;
	FUNC3(buf, 1, count);	/* yes, again ... */
	req->rq_iov[1].iov_base = buf;
	req->rq_iov[1].iov_len = 3;
	req->rq_iov[2].iov_base = (char *) data;
	req->rq_iov[2].iov_len = count;
	req->rq_iovlen = 3;
	req->rq_flags |= SMB_REQ_NORETRY;

	result = FUNC7(req, SMBwrite, 1, 0);
	if (result >= 0)
		result = FUNC4(req->rq_header, smb_vwv0);

	FUNC8(req);
out:
	return result;
}