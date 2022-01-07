
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int Mid; int smb_buf_length; scalar_t__ WordCount; int Command; } ;
struct mid_q_entry {int sequence_number; } ;
struct TCP_Server_Info {int srv_mutex; int sequence_number; } ;


 int SMB_COM_NT_CANCEL ;
 int be32_to_cpu (int ) ;
 int cFYI (int,char*,int ,int) ;
 int cifs_sign_smb (struct smb_hdr*,struct TCP_Server_Info*,int *) ;
 int cpu_to_be32 (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_bcc (int ,struct smb_hdr*) ;
 int smb_send (struct TCP_Server_Info*,struct smb_hdr*,int ) ;

__attribute__((used)) static int
send_nt_cancel(struct TCP_Server_Info *server, struct smb_hdr *in_buf,
  struct mid_q_entry *mid)
{
 int rc = 0;


 in_buf->smb_buf_length = cpu_to_be32(sizeof(struct smb_hdr) - 4 + 2);
 in_buf->Command = SMB_COM_NT_CANCEL;
 in_buf->WordCount = 0;
 put_bcc(0, in_buf);

 mutex_lock(&server->srv_mutex);
 rc = cifs_sign_smb(in_buf, server, &mid->sequence_number);
 if (rc) {
  mutex_unlock(&server->srv_mutex);
  return rc;
 }






 --server->sequence_number;
 rc = smb_send(server, in_buf, be32_to_cpu(in_buf->smb_buf_length));
 if (rc < 0)
  server->sequence_number--;

 mutex_unlock(&server->srv_mutex);

 cFYI(1, "issued NT_CANCEL for mid %u, rc = %d",
  in_buf->Mid, rc);

 return rc;
}
