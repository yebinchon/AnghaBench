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
typedef  char u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct smb_sb_info {int dummy; } ;
struct smb_request {int rq_iovlen; int /*<<< orphan*/  rq_header; int /*<<< orphan*/  rq_flags; TYPE_1__* rq_iov; } ;
struct inode {int /*<<< orphan*/  i_ino; } ;
typedef  int loff_t ;
struct TYPE_4__ {int fileid; } ;
struct TYPE_3__ {char* iov_base; int iov_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  SMB_REQ_NORETRY ; 
 int /*<<< orphan*/  SMBwriteX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct smb_sb_info* FUNC5 (struct inode*) ; 
 struct smb_request* FUNC6 (struct smb_sb_info*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct smb_request*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct smb_request*) ; 
 char* FUNC9 (struct smb_request*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  smb_vwv0 ; 
 int /*<<< orphan*/  smb_vwv1 ; 
 int /*<<< orphan*/  smb_vwv10 ; 
 int /*<<< orphan*/  smb_vwv11 ; 
 int smb_vwv12 ; 
 int /*<<< orphan*/  smb_vwv2 ; 
 int smb_vwv3 ; 
 int smb_vwv5 ; 
 int /*<<< orphan*/  smb_vwv7 ; 
 int /*<<< orphan*/  smb_vwv8 ; 
 int /*<<< orphan*/  smb_vwv9 ; 

__attribute__((used)) static int
FUNC10(struct inode *inode, loff_t offset, int count, const char *data)
{
	struct smb_sb_info *server = FUNC5(inode);
	int result;
	u8 *p;
	static u8 pad[4];
	struct smb_request *req;

	result = -ENOMEM;
	if (! (req = FUNC6(server, 0)))
		goto out;

	FUNC2("ino=%ld, fileid=%d, count=%d@%Ld\n",
		inode->i_ino, FUNC1(inode)->fileid, count, offset);

	p = FUNC9(req, SMBwriteX, 14, count + 1);
	FUNC3(req->rq_header, smb_vwv0, 0x00ff);
	FUNC3(req->rq_header, smb_vwv1, 0);
	FUNC3(req->rq_header, smb_vwv2, FUNC1(inode)->fileid);
	FUNC0(req->rq_header, smb_vwv3, (u32)offset);	/* low 32 bits */
	FUNC0(req->rq_header, smb_vwv5, 0);
	FUNC3(req->rq_header, smb_vwv7, 0);		/* write mode */
	FUNC3(req->rq_header, smb_vwv8, 0);
	FUNC3(req->rq_header, smb_vwv9, 0);
	FUNC3(req->rq_header, smb_vwv10, count);		/* data length */
	FUNC3(req->rq_header, smb_vwv11, smb_vwv12 + 2 + 1);
	FUNC0(req->rq_header, smb_vwv12, (u32)(offset >> 32));

	req->rq_iov[1].iov_base = pad;
	req->rq_iov[1].iov_len = 1;
	req->rq_iov[2].iov_base = (char *) data;
	req->rq_iov[2].iov_len = count;
	req->rq_iovlen = 3;
	req->rq_flags |= SMB_REQ_NORETRY;

	result = FUNC7(req, SMBwriteX, 6, 0);
 	if (result >= 0)
		result = FUNC4(req->rq_header, smb_vwv2);

	FUNC8(req);
out:
	return result;
}