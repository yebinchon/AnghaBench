
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_hdr {int dummy; } ;
struct kvec {unsigned int iov_len; struct smb_hdr* iov_base; } ;
struct TCP_Server_Info {int dummy; } ;


 int smb_sendv (struct TCP_Server_Info*,struct kvec*,int) ;

int
smb_send(struct TCP_Server_Info *server, struct smb_hdr *smb_buffer,
  unsigned int smb_buf_length)
{
 struct kvec iov;

 iov.iov_base = smb_buffer;
 iov.iov_len = smb_buf_length + 4;

 return smb_sendv(server, &iov, 1);
}
