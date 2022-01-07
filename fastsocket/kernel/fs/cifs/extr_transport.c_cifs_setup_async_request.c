
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct smb_hdr {int Flags2; } ;
struct mid_q_entry {int sequence_number; } ;
struct TCP_Server_Info {int sec_mode; } ;
struct TYPE_2__ {scalar_t__ iov_base; } ;


 struct mid_q_entry* AllocMidQEntry (struct smb_hdr*,struct TCP_Server_Info*) ;
 int DeleteMidQEntry (struct mid_q_entry*) ;
 int ENOMEM ;
 struct mid_q_entry* ERR_PTR (int) ;
 int SECMODE_SIGN_ENABLED ;
 int SECMODE_SIGN_REQUIRED ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int cifs_sign_rqst (struct smb_rqst*,struct TCP_Server_Info*,int *) ;

struct mid_q_entry *
cifs_setup_async_request(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
 int rc;
 struct smb_hdr *hdr = (struct smb_hdr *)rqst->rq_iov[0].iov_base;
 struct mid_q_entry *mid;


 if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED))
  hdr->Flags2 |= SMBFLG2_SECURITY_SIGNATURE;

 mid = AllocMidQEntry(hdr, server);
 if (mid == ((void*)0))
  return ERR_PTR(-ENOMEM);

 rc = cifs_sign_rqst(rqst, server, &mid->sequence_number);
 if (rc) {
  DeleteMidQEntry(mid);
  return ERR_PTR(rc);
 }

 return mid;
}
