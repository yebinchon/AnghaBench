
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int num_closes; int ses; } ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {int LastWriteTime; scalar_t__ ByteCount; scalar_t__ FileID; } ;
typedef TYPE_1__ CLOSE_REQ ;


 int EAGAIN ;
 int EINTR ;
 int SMB_COM_CLOSE ;
 int SendReceiveNoRsp (int const,int ,char*,int ) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*) ;
 int cifs_stats_inc (int *) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSSMBClose(const int xid, struct cifs_tcon *tcon, int smb_file_id)
{
 int rc = 0;
 CLOSE_REQ *pSMB = ((void*)0);
 cFYI(1, "In CIFSSMBClose");


 rc = small_smb_init(SMB_COM_CLOSE, 3, tcon, (void **) &pSMB);
 if (rc == -EAGAIN)
  return 0;
 if (rc)
  return rc;

 pSMB->FileID = (__u16) smb_file_id;
 pSMB->LastWriteTime = 0xFFFFFFFF;
 pSMB->ByteCount = 0;
 rc = SendReceiveNoRsp(xid, tcon->ses, (char *) pSMB, 0);
 cifs_stats_inc(&tcon->num_closes);
 if (rc) {
  if (rc != -EINTR) {

   cERROR(1, "Send error in Close = %d", rc);
  }
 }


 if (rc == -EAGAIN)
  rc = 0;

 return rc;
}
