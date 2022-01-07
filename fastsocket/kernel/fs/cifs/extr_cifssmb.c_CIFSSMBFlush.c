
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cifs_tcon {int num_flushes; int ses; } ;
typedef scalar_t__ __u16 ;
struct TYPE_2__ {scalar_t__ ByteCount; scalar_t__ FileID; } ;
typedef TYPE_1__ FLUSH_REQ ;


 int SMB_COM_FLUSH ;
 int SendReceiveNoRsp (int const,int ,char*,int ) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*) ;
 int cifs_stats_inc (int *) ;
 int small_smb_init (int ,int,struct cifs_tcon*,void**) ;

int
CIFSSMBFlush(const int xid, struct cifs_tcon *tcon, int smb_file_id)
{
 int rc = 0;
 FLUSH_REQ *pSMB = ((void*)0);
 cFYI(1, "In CIFSSMBFlush");

 rc = small_smb_init(SMB_COM_FLUSH, 1, tcon, (void **) &pSMB);
 if (rc)
  return rc;

 pSMB->FileID = (__u16) smb_file_id;
 pSMB->ByteCount = 0;
 rc = SendReceiveNoRsp(xid, tcon->ses, (char *) pSMB, 0);
 cifs_stats_inc(&tcon->num_flushes);
 if (rc)
  cERROR(1, "Send error in Flush = %d", rc);

 return rc;
}
