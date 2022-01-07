
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int num_fclose; int ses; } ;
typedef int __u16 ;
struct TYPE_2__ {scalar_t__ ByteCount; int FileID; } ;
typedef TYPE_1__ FINDCLOSE_REQ ;


 int EAGAIN ;
 int SMB_COM_FIND_CLOSE2 ;
 int SendReceiveNoRsp (int const,int ,char*,int ) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*) ;
 int cifs_stats_inc (int *) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSFindClose(const int xid, struct cifs_tcon *tcon,
       const __u16 searchHandle)
{
 int rc = 0;
 FINDCLOSE_REQ *pSMB = ((void*)0);

 cFYI(1, "In CIFSSMBFindClose");
 rc = small_smb_init(SMB_COM_FIND_CLOSE2, 1, tcon, (void **)&pSMB);



 if (rc == -EAGAIN)
  return 0;
 if (rc)
  return rc;

 pSMB->FileID = searchHandle;
 pSMB->ByteCount = 0;
 rc = SendReceiveNoRsp(xid, tcon->ses, (char *) pSMB, 0);
 if (rc)
  cERROR(1, "Send error in FindClose = %d", rc);

 cifs_stats_inc(&tcon->num_fclose);


 if (rc == -EAGAIN)
  rc = 0;

 return rc;
}
