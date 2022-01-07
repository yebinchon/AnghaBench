
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_hdr {int dummy; } ;
struct cifs_tcon {TYPE_1__* ses; scalar_t__ need_reconnect; } ;
struct TYPE_2__ {scalar_t__ need_reconnect; int * server; } ;


 int EAGAIN ;
 int EIO ;
 int SMB_COM_TREE_DISCONNECT ;
 int SendReceiveNoRsp (int const,TYPE_1__*,char*,int ) ;
 int cFYI (int,char*,...) ;
 int small_smb_init (int ,int ,struct cifs_tcon*,void**) ;

int
CIFSSMBTDis(const int xid, struct cifs_tcon *tcon)
{
 struct smb_hdr *smb_buffer;
 int rc = 0;

 cFYI(1, "In tree disconnect");


 if ((tcon->ses == ((void*)0)) || (tcon->ses->server == ((void*)0)))
  return -EIO;







 if ((tcon->need_reconnect) || (tcon->ses->need_reconnect))
  return 0;

 rc = small_smb_init(SMB_COM_TREE_DISCONNECT, 0, tcon,
       (void **)&smb_buffer);
 if (rc)
  return rc;

 rc = SendReceiveNoRsp(xid, tcon->ses, (char *)smb_buffer, 0);
 if (rc)
  cFYI(1, "Tree disconnect failed %d", rc);



 if (rc == -EAGAIN)
  rc = 0;

 return rc;
}
