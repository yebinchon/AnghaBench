
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
struct socket {int dummy; } ;
struct smb_rqst {int rq_nvec; unsigned int rq_npages; int * rq_pages; struct kvec* rq_iov; } ;
struct kvec {int iov_len; int iov_base; } ;
struct TCP_Server_Info {int tcpStatus; struct socket* ssocket; } ;


 int CifsNeedReconnect ;
 int EINTR ;
 int EIO ;
 int ENOTSOCK ;
 int SOL_TCP ;
 int TCP_CORK ;
 int WARN (int,char*,unsigned long,unsigned int) ;
 int cERROR (int,char*,int) ;
 int cFYI (int,char*,unsigned int,...) ;
 int cifs_rqst_page_to_kvec (struct smb_rqst*,unsigned int,struct kvec*) ;
 int dump_smb (int ,int ) ;
 unsigned int get_rfc1002_length (int ) ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int kunmap (int ) ;
 unsigned long rqst_len (struct smb_rqst*) ;
 int smb_send_kvec (struct TCP_Server_Info*,struct kvec*,int,size_t*) ;

__attribute__((used)) static int
smb_send_rqst(struct TCP_Server_Info *server, struct smb_rqst *rqst)
{
 int rc;
 struct kvec *iov = rqst->rq_iov;
 int n_vec = rqst->rq_nvec;
 unsigned int smb_buf_length = get_rfc1002_length(iov[0].iov_base);
 unsigned long send_length;
 unsigned int i;
 size_t total_len = 0, sent;
 struct socket *ssocket = server->ssocket;
 int val = 1;

 if (ssocket == ((void*)0))
  return -ENOTSOCK;


 send_length = rqst_len(rqst);
 if (send_length != smb_buf_length + 4) {
  WARN(1, "Send length mismatch(send_length=%lu smb_buf_length=%u)\n", send_length, smb_buf_length);
  return -EIO;
 }

 cFYI(1, "Sending smb: smb_len=%u", smb_buf_length);
 dump_smb(iov[0].iov_base, iov[0].iov_len);


 kernel_setsockopt(ssocket, SOL_TCP, TCP_CORK,
    (char *)&val, sizeof(val));

 rc = smb_send_kvec(server, iov, n_vec, &sent);
 if (rc < 0)
  goto uncork;

 total_len += sent;


 for (i = 0; i < rqst->rq_npages; i++) {
  struct kvec p_iov;

  cifs_rqst_page_to_kvec(rqst, i, &p_iov);
  rc = smb_send_kvec(server, &p_iov, 1, &sent);
  kunmap(rqst->rq_pages[i]);
  if (rc < 0)
   break;

  total_len += sent;
 }

uncork:

 val = 0;
 kernel_setsockopt(ssocket, SOL_TCP, TCP_CORK,
    (char *)&val, sizeof(val));

 if ((total_len > 0) && (total_len != smb_buf_length + 4)) {
  cFYI(1, "partial send (wanted=%u sent=%zu): terminating "
   "session", smb_buf_length + 4, total_len);





  server->tcpStatus = CifsNeedReconnect;
 }

 if (rc < 0 && rc != -EINTR)
  cERROR(1, "Error %d sending data on socket to server", rc);
 else
  rc = 0;

 return rc;
}
