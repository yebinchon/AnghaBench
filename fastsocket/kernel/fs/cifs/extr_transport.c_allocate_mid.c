
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_hdr {scalar_t__ Command; } ;
struct mid_q_entry {int qhead; } ;
struct cifs_ses {scalar_t__ status; TYPE_1__* server; } ;
struct TYPE_2__ {scalar_t__ tcpStatus; int pending_mid_q; } ;


 struct mid_q_entry* AllocMidQEntry (struct smb_hdr*,TYPE_1__*) ;
 scalar_t__ CifsExiting ;
 scalar_t__ CifsGood ;
 scalar_t__ CifsNeedReconnect ;
 int EAGAIN ;
 int ENOENT ;
 int ENOMEM ;
 int GlobalMid_Lock ;
 scalar_t__ SMB_COM_NEGOTIATE ;
 scalar_t__ SMB_COM_SESSION_SETUP_ANDX ;
 int cFYI (int,char*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int allocate_mid(struct cifs_ses *ses, struct smb_hdr *in_buf,
   struct mid_q_entry **ppmidQ)
{
 if (ses->server->tcpStatus == CifsExiting) {
  return -ENOENT;
 }

 if (ses->server->tcpStatus == CifsNeedReconnect) {
  cFYI(1, "tcp session dead - return to caller to retry");
  return -EAGAIN;
 }

 if (ses->status != CifsGood) {

  if ((in_buf->Command != SMB_COM_SESSION_SETUP_ANDX) &&
   (in_buf->Command != SMB_COM_NEGOTIATE))
   return -EAGAIN;

 }
 *ppmidQ = AllocMidQEntry(in_buf, ses->server);
 if (*ppmidQ == ((void*)0))
  return -ENOMEM;
 spin_lock(&GlobalMid_Lock);
 list_add_tail(&(*ppmidQ)->qhead, &ses->server->pending_mid_q);
 spin_unlock(&GlobalMid_Lock);
 return 0;
}
