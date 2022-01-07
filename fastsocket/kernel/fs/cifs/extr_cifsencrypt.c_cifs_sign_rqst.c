
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct smb_rqst {TYPE_1__* rq_iov; } ;
struct TYPE_5__ {scalar_t__ Reserved; int SequenceNumber; } ;
struct TYPE_6__ {int SecuritySignature; TYPE_2__ Sequence; } ;
struct smb_hdr {int Flags2; TYPE_3__ Signature; } ;
struct TCP_Server_Info {scalar_t__ tcpStatus; int sequence_number; int session_estab; } ;
typedef scalar_t__ __u32 ;
struct TYPE_4__ {scalar_t__ iov_base; } ;


 scalar_t__ CifsNeedNegotiate ;
 int EINVAL ;
 int SMBFLG2_SECURITY_SIGNATURE ;
 int cifs_calc_signature (struct smb_rqst*,struct TCP_Server_Info*,char*) ;
 int cpu_to_le32 (int ) ;
 int memcpy (int ,char*,int) ;
 int memset (int ,int ,int) ;

int cifs_sign_rqst(struct smb_rqst *rqst, struct TCP_Server_Info *server,
     __u32 *pexpected_response_sequence_number)
{
 int rc = 0;
 char smb_signature[20];
 struct smb_hdr *cifs_pdu = (struct smb_hdr *)rqst->rq_iov[0].iov_base;

 if ((cifs_pdu == ((void*)0)) || (server == ((void*)0)))
  return -EINVAL;

 if (!(cifs_pdu->Flags2 & SMBFLG2_SECURITY_SIGNATURE) ||
     server->tcpStatus == CifsNeedNegotiate)
  return rc;

 if (!server->session_estab) {
  memcpy(cifs_pdu->Signature.SecuritySignature, "BSRSPYL", 8);
  return rc;
 }

 cifs_pdu->Signature.Sequence.SequenceNumber =
    cpu_to_le32(server->sequence_number);
 cifs_pdu->Signature.Sequence.Reserved = 0;

 *pexpected_response_sequence_number = server->sequence_number++;
 server->sequence_number++;

 rc = cifs_calc_signature(rqst, server, smb_signature);
 if (rc)
  memset(cifs_pdu->Signature.SecuritySignature, 0, 8);
 else
  memcpy(cifs_pdu->Signature.SecuritySignature, smb_signature, 8);

 return rc;
}
