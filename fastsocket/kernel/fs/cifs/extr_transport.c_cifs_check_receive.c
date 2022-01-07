
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int rq_nvec; struct kvec* rq_iov; } ;
struct mid_q_entry {int resp_buf; scalar_t__ sequence_number; } ;
struct kvec {unsigned int iov_len; int iov_base; } ;
struct TCP_Server_Info {int sec_mode; } ;


 int SECMODE_SIGN_ENABLED ;
 int SECMODE_SIGN_REQUIRED ;
 int cERROR (int,char*,int) ;
 int cifs_verify_signature (struct smb_rqst*,struct TCP_Server_Info*,scalar_t__) ;
 int dump_smb (int ,int ) ;
 int get_rfc1002_length (int ) ;
 int map_smb_to_linux_error (int ,int) ;
 int min_t (int ,int,unsigned int) ;
 int u32 ;

int
cifs_check_receive(struct mid_q_entry *mid, struct TCP_Server_Info *server,
     bool log_error)
{
 unsigned int len = get_rfc1002_length(mid->resp_buf) + 4;

 dump_smb(mid->resp_buf, min_t(u32, 92, len));


 if (server->sec_mode & (SECMODE_SIGN_REQUIRED | SECMODE_SIGN_ENABLED)) {
  struct kvec iov;
  int rc = 0;
  struct smb_rqst rqst = { .rq_iov = &iov,
      .rq_nvec = 1 };

  iov.iov_base = mid->resp_buf;
  iov.iov_len = len;

  rc = cifs_verify_signature(&rqst, server,
        mid->sequence_number + 1);
  if (rc)
   cERROR(1, "SMB signature verification returned error = "
          "%d", rc);
 }


 return map_smb_to_linux_error(mid->resp_buf, log_error);
}
