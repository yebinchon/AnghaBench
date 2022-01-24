#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct smb_com_readx_req {scalar_t__ ByteCount; } ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;
struct cifs_tcon {int /*<<< orphan*/  num_reads; TYPE_5__* ses; } ;
struct cifs_io_parms {int pid; unsigned int netfid; int offset; unsigned int length; struct cifs_tcon* tcon; } ;
typedef  int __u64 ;
typedef  int __u32 ;
typedef  unsigned int __u16 ;
struct TYPE_10__ {int capabilities; int /*<<< orphan*/ * server; } ;
struct TYPE_6__ {int /*<<< orphan*/  smb_buf_length; void* PidHigh; void* Pid; } ;
struct TYPE_9__ {int AndXCommand; unsigned int Fid; TYPE_1__ hdr; scalar_t__ ByteCount; void* MaxCountHigh; void* MaxCount; scalar_t__ Remaining; void* OffsetHigh; void* OffsetLow; } ;
struct TYPE_7__ {int /*<<< orphan*/  Protocol; } ;
struct TYPE_8__ {int /*<<< orphan*/  DataOffset; TYPE_2__ hdr; int /*<<< orphan*/  DataLength; int /*<<< orphan*/  DataLengthHigh; } ;
typedef  TYPE_3__ READ_RSP ;
typedef  TYPE_4__ READ_REQ ;

/* Variables and functions */
 int CAP_LARGE_FILES ; 
 int CIFSMaxBufSize ; 
 int CIFS_LARGE_BUFFER ; 
 int /*<<< orphan*/  CIFS_LOG_ERROR ; 
 int CIFS_NO_BUFFER ; 
 int CIFS_SMALL_BUFFER ; 
 int EACCES ; 
 int ECONNABORTED ; 
 int EIO ; 
 int /*<<< orphan*/  SMB_COM_READ_ANDX ; 
 int FUNC0 (int const,TYPE_5__*,struct kvec*,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (unsigned int) ; 
 void* FUNC8 (unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int,struct cifs_tcon*,void**) ; 

int
FUNC12(const int xid, struct cifs_io_parms *io_parms, unsigned int *nbytes,
	    char **buf, int *pbuf_type)
{
	int rc = -EACCES;
	READ_REQ *pSMB = NULL;
	READ_RSP *pSMBr = NULL;
	char *pReadData = NULL;
	int wct;
	int resp_buf_type = 0;
	struct kvec iov[1];
	__u32 pid = io_parms->pid;
	__u16 netfid = io_parms->netfid;
	__u64 offset = io_parms->offset;
	struct cifs_tcon *tcon = io_parms->tcon;
	unsigned int count = io_parms->length;

	FUNC3(1, "Reading %d bytes on fid %d", count, netfid);
	if (tcon->ses->capabilities & CAP_LARGE_FILES)
		wct = 12;
	else {
		wct = 10; /* old style read */
		if ((offset >> 32) > 0)  {
			/* can not handle this big offset for old */
			return -EIO;
		}
	}

	*nbytes = 0;
	rc = FUNC11(SMB_COM_READ_ANDX, wct, tcon, (void **) &pSMB);
	if (rc)
		return rc;

	pSMB->hdr.Pid = FUNC7((__u16)pid);
	pSMB->hdr.PidHigh = FUNC7((__u16)(pid >> 16));

	/* tcon and ses pointer are checked in smb_init */
	if (tcon->ses->server == NULL)
		return -ECONNABORTED;

	pSMB->AndXCommand = 0xFF;       /* none */
	pSMB->Fid = netfid;
	pSMB->OffsetLow = FUNC8(offset & 0xFFFFFFFF);
	if (wct == 12)
		pSMB->OffsetHigh = FUNC8(offset >> 32);

	pSMB->Remaining = 0;
	pSMB->MaxCount = FUNC7(count & 0xFFFF);
	pSMB->MaxCountHigh = FUNC8(count >> 16);
	if (wct == 12)
		pSMB->ByteCount = 0;  /* no need to do le conversion since 0 */
	else {
		/* old style read */
		struct smb_com_readx_req *pSMBW =
			(struct smb_com_readx_req *)pSMB;
		pSMBW->ByteCount = 0;
	}

	iov[0].iov_base = (char *)pSMB;
	iov[0].iov_len = FUNC1(pSMB->hdr.smb_buf_length) + 4;
	rc = FUNC0(xid, tcon->ses, iov, 1 /* num iovecs */,
			 &resp_buf_type, CIFS_LOG_ERROR);
	FUNC6(&tcon->num_reads);
	pSMBr = (READ_RSP *)iov[0].iov_base;
	if (rc) {
		FUNC2(1, "Send error in read = %d", rc);
	} else {
		int data_length = FUNC9(pSMBr->DataLengthHigh);
		data_length = data_length << 16;
		data_length += FUNC9(pSMBr->DataLength);
		*nbytes = data_length;

		/*check that DataLength would not go beyond end of SMB */
		if ((data_length > CIFSMaxBufSize)
				|| (data_length > count)) {
			FUNC3(1, "bad length %d for count %d",
				 data_length, count);
			rc = -EIO;
			*nbytes = 0;
		} else {
			pReadData = (char *) (&pSMBr->hdr.Protocol) +
					FUNC9(pSMBr->DataOffset);
/*			if (rc = copy_to_user(buf, pReadData, data_length)) {
				cERROR(1, "Faulting on read rc = %d",rc);
				rc = -EFAULT;
			}*/ /* can not use copy_to_user when using page cache*/
			if (*buf)
				FUNC10(*buf, pReadData, data_length);
		}
	}

/*	cifs_small_buf_release(pSMB); */ /* Freed earlier now in SendReceive2 */
	if (*buf) {
		if (resp_buf_type == CIFS_SMALL_BUFFER)
			FUNC5(iov[0].iov_base);
		else if (resp_buf_type == CIFS_LARGE_BUFFER)
			FUNC4(iov[0].iov_base);
	} else if (resp_buf_type != CIFS_NO_BUFFER) {
		/* return buffer to caller to free */
		*buf = iov[0].iov_base;
		if (resp_buf_type == CIFS_SMALL_BUFFER)
			*pbuf_type = CIFS_SMALL_BUFFER;
		else if (resp_buf_type == CIFS_LARGE_BUFFER)
			*pbuf_type = CIFS_LARGE_BUFFER;
	} /* else no valid buffer on return - leave as null */

	/* Note: On -EAGAIN error only caller can retry on handle based calls
		since file handle passed in no longer valid */
	return rc;
}