
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct smb_com_readx_req {scalar_t__ ByteCount; } ;
struct kvec {char* iov_base; scalar_t__ iov_len; } ;
struct cifs_tcon {int num_reads; TYPE_5__* ses; } ;
struct cifs_io_parms {int pid; unsigned int netfid; int offset; unsigned int length; struct cifs_tcon* tcon; } ;
typedef int __u64 ;
typedef int __u32 ;
typedef unsigned int __u16 ;
struct TYPE_10__ {int capabilities; int * server; } ;
struct TYPE_6__ {int smb_buf_length; void* PidHigh; void* Pid; } ;
struct TYPE_9__ {int AndXCommand; unsigned int Fid; TYPE_1__ hdr; scalar_t__ ByteCount; void* MaxCountHigh; void* MaxCount; scalar_t__ Remaining; void* OffsetHigh; void* OffsetLow; } ;
struct TYPE_7__ {int Protocol; } ;
struct TYPE_8__ {int DataOffset; TYPE_2__ hdr; int DataLength; int DataLengthHigh; } ;
typedef TYPE_3__ READ_RSP ;
typedef TYPE_4__ READ_REQ ;


 int CAP_LARGE_FILES ;
 int CIFSMaxBufSize ;
 int CIFS_LARGE_BUFFER ;
 int CIFS_LOG_ERROR ;
 int CIFS_NO_BUFFER ;
 int CIFS_SMALL_BUFFER ;
 int EACCES ;
 int ECONNABORTED ;
 int EIO ;
 int SMB_COM_READ_ANDX ;
 int SendReceive2 (int const,TYPE_5__*,struct kvec*,int,int*,int ) ;
 scalar_t__ be32_to_cpu (int ) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*,int,unsigned int) ;
 int cifs_buf_release (char*) ;
 int cifs_small_buf_release (char*) ;
 int cifs_stats_inc (int *) ;
 void* cpu_to_le16 (unsigned int) ;
 void* cpu_to_le32 (unsigned int) ;
 int le16_to_cpu (int ) ;
 int memcpy (char*,char*,int) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSSMBRead(const int xid, struct cifs_io_parms *io_parms, unsigned int *nbytes,
     char **buf, int *pbuf_type)
{
 int rc = -EACCES;
 READ_REQ *pSMB = ((void*)0);
 READ_RSP *pSMBr = ((void*)0);
 char *pReadData = ((void*)0);
 int wct;
 int resp_buf_type = 0;
 struct kvec iov[1];
 __u32 pid = io_parms->pid;
 __u16 netfid = io_parms->netfid;
 __u64 offset = io_parms->offset;
 struct cifs_tcon *tcon = io_parms->tcon;
 unsigned int count = io_parms->length;

 cFYI(1, "Reading %d bytes on fid %d", count, netfid);
 if (tcon->ses->capabilities & CAP_LARGE_FILES)
  wct = 12;
 else {
  wct = 10;
  if ((offset >> 32) > 0) {

   return -EIO;
  }
 }

 *nbytes = 0;
 rc = small_smb_init(SMB_COM_READ_ANDX, wct, tcon, (void **) &pSMB);
 if (rc)
  return rc;

 pSMB->hdr.Pid = cpu_to_le16((__u16)pid);
 pSMB->hdr.PidHigh = cpu_to_le16((__u16)(pid >> 16));


 if (tcon->ses->server == ((void*)0))
  return -ECONNABORTED;

 pSMB->AndXCommand = 0xFF;
 pSMB->Fid = netfid;
 pSMB->OffsetLow = cpu_to_le32(offset & 0xFFFFFFFF);
 if (wct == 12)
  pSMB->OffsetHigh = cpu_to_le32(offset >> 32);

 pSMB->Remaining = 0;
 pSMB->MaxCount = cpu_to_le16(count & 0xFFFF);
 pSMB->MaxCountHigh = cpu_to_le32(count >> 16);
 if (wct == 12)
  pSMB->ByteCount = 0;
 else {

  struct smb_com_readx_req *pSMBW =
   (struct smb_com_readx_req *)pSMB;
  pSMBW->ByteCount = 0;
 }

 iov[0].iov_base = (char *)pSMB;
 iov[0].iov_len = be32_to_cpu(pSMB->hdr.smb_buf_length) + 4;
 rc = SendReceive2(xid, tcon->ses, iov, 1 ,
    &resp_buf_type, CIFS_LOG_ERROR);
 cifs_stats_inc(&tcon->num_reads);
 pSMBr = (READ_RSP *)iov[0].iov_base;
 if (rc) {
  cERROR(1, "Send error in read = %d", rc);
 } else {
  int data_length = le16_to_cpu(pSMBr->DataLengthHigh);
  data_length = data_length << 16;
  data_length += le16_to_cpu(pSMBr->DataLength);
  *nbytes = data_length;


  if ((data_length > CIFSMaxBufSize)
    || (data_length > count)) {
   cFYI(1, "bad length %d for count %d",
     data_length, count);
   rc = -EIO;
   *nbytes = 0;
  } else {
   pReadData = (char *) (&pSMBr->hdr.Protocol) +
     le16_to_cpu(pSMBr->DataOffset);




   if (*buf)
    memcpy(*buf, pReadData, data_length);
  }
 }


 if (*buf) {
  if (resp_buf_type == CIFS_SMALL_BUFFER)
   cifs_small_buf_release(iov[0].iov_base);
  else if (resp_buf_type == CIFS_LARGE_BUFFER)
   cifs_buf_release(iov[0].iov_base);
 } else if (resp_buf_type != CIFS_NO_BUFFER) {

  *buf = iov[0].iov_base;
  if (resp_buf_type == CIFS_SMALL_BUFFER)
   *pbuf_type = CIFS_SMALL_BUFFER;
  else if (resp_buf_type == CIFS_LARGE_BUFFER)
   *pbuf_type = CIFS_LARGE_BUFFER;
 }



 return rc;
}
