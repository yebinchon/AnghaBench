
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct TYPE_5__ {scalar_t__ Reserved; int SequenceNumber; } ;
struct TYPE_6__ {char* SecuritySignature; TYPE_2__ Sequence; } ;
struct smb_hdr {scalar_t__ Command; TYPE_3__ Signature; } ;
struct smb_com_lock_req {int LockType; } ;
struct TCP_Server_Info {int srv_mutex; int session_estab; } ;
typedef int __u32 ;
struct TYPE_4__ {scalar_t__ iov_base; } ;


 int EACCES ;
 int EINVAL ;
 int LOCKING_ANDX_OPLOCK_RELEASE ;
 scalar_t__ SMB_COM_LOCKING_ANDX ;
 int cFYI (int,char*,scalar_t__) ;
 unsigned int cifs_calc_signature (struct smb_rqst*,struct TCP_Server_Info*,char*) ;
 int cpu_to_le32 (int ) ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cifs_verify_signature(struct smb_rqst *rqst,
     struct TCP_Server_Info *server,
     __u32 expected_sequence_number)
{
 unsigned int rc;
 char server_response_sig[8];
 char what_we_think_sig_should_be[20];
 struct smb_hdr *cifs_pdu = (struct smb_hdr *)rqst->rq_iov[0].iov_base;

 if (cifs_pdu == ((void*)0) || server == ((void*)0))
  return -EINVAL;

 if (!server->session_estab)
  return 0;

 if (cifs_pdu->Command == SMB_COM_LOCKING_ANDX) {
  struct smb_com_lock_req *pSMB =
   (struct smb_com_lock_req *)cifs_pdu;
     if (pSMB->LockType & LOCKING_ANDX_OPLOCK_RELEASE)
   return 0;
 }





 if (memcmp(cifs_pdu->Signature.SecuritySignature, "BSRSPYL ", 8) == 0)
  cFYI(1, "dummy signature received for smb command 0x%x",
   cifs_pdu->Command);



 memcpy(server_response_sig, cifs_pdu->Signature.SecuritySignature, 8);

 cifs_pdu->Signature.Sequence.SequenceNumber =
     cpu_to_le32(expected_sequence_number);
 cifs_pdu->Signature.Sequence.Reserved = 0;

 mutex_lock(&server->srv_mutex);
 rc = cifs_calc_signature(rqst, server, what_we_think_sig_should_be);
 mutex_unlock(&server->srv_mutex);

 if (rc)
  return rc;




 if (memcmp(server_response_sig, what_we_think_sig_should_be, 8))
  return -EACCES;
 else
  return 0;

}
