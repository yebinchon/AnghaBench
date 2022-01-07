
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int smb_buf_length; } ;
struct kvec {scalar_t__ iov_len; struct smb_hdr* iov_base; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int __u32 ;


 scalar_t__ be32_to_cpu (int ) ;
 int cifs_sign_smbv (struct kvec*,int,struct TCP_Server_Info*,int *) ;

int cifs_sign_smb(struct smb_hdr *cifs_pdu, struct TCP_Server_Info *server,
    __u32 *pexpected_response_sequence_number)
{
 struct kvec iov;

 iov.iov_base = cifs_pdu;
 iov.iov_len = be32_to_cpu(cifs_pdu->smb_buf_length) + 4;

 return cifs_sign_smbv(&iov, 1, server,
         pexpected_response_sequence_number);
}
