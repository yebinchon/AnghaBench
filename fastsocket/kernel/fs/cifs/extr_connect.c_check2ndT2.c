
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int DataCount; int TotalDataCount; } ;
struct smb_t2_rsp {TYPE_1__ t2_rsp; } ;
struct smb_hdr {scalar_t__ Command; int WordCount; } ;
typedef scalar_t__ __u16 ;


 scalar_t__ CIFSMaxBufSize ;
 int EINVAL ;
 scalar_t__ SMB_COM_TRANSACTION2 ;
 int cERROR (int,char*,scalar_t__,scalar_t__) ;
 int cFYI (int,char*,...) ;
 scalar_t__ get_unaligned_le16 (int *) ;

__attribute__((used)) static int check2ndT2(char *buf)
{
 struct smb_hdr *pSMB = (struct smb_hdr *)buf;
 struct smb_t2_rsp *pSMBt;
 int remaining;
 __u16 total_data_size, data_in_this_rsp;

 if (pSMB->Command != SMB_COM_TRANSACTION2)
  return 0;



 if (pSMB->WordCount != 10) {
  cFYI(1, "invalid transact2 word count");
  return -EINVAL;
 }

 pSMBt = (struct smb_t2_rsp *)pSMB;

 total_data_size = get_unaligned_le16(&pSMBt->t2_rsp.TotalDataCount);
 data_in_this_rsp = get_unaligned_le16(&pSMBt->t2_rsp.DataCount);

 if (total_data_size == data_in_this_rsp)
  return 0;
 else if (total_data_size < data_in_this_rsp) {
  cFYI(1, "total data %d smaller than data in frame %d",
   total_data_size, data_in_this_rsp);
  return -EINVAL;
 }

 remaining = total_data_size - data_in_this_rsp;

 cFYI(1, "missing %d bytes from transact2, check next response",
  remaining);
 if (total_data_size > CIFSMaxBufSize) {
  cERROR(1, "TotalDataSize %d is over maximum buffer %d",
   total_data_size, CIFSMaxBufSize);
  return -EINVAL;
 }
 return remaining;
}
