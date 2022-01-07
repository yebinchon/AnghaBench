
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct kvec {int dummy; } ;
struct TCP_Server_Info {int dummy; } ;
typedef int __u32 ;


 int cifs_sign_rqst (struct smb_rqst*,struct TCP_Server_Info*,int *) ;

int cifs_sign_smbv(struct kvec *iov, int n_vec, struct TCP_Server_Info *server,
     __u32 *pexpected_response_sequence)
{
 struct smb_rqst rqst = { .rq_iov = iov,
     .rq_nvec = n_vec };

 return cifs_sign_rqst(&rqst, server, pexpected_response_sequence);
}
