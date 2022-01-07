
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int rstate; } ;
struct smb_request {scalar_t__ rq_bytes_recvd; scalar_t__ rq_rlen; } ;


 int SMB_RECV_END ;
 int VERBOSE (char*,int) ;
 int smb_receive (struct smb_sb_info*,struct smb_request*) ;

__attribute__((used)) static int smb_recv_data(struct smb_sb_info *server, struct smb_request *req)
{
 int result;

 result = smb_receive(server, req);
 if (result < 0)
  goto out;
 if (req->rq_bytes_recvd < req->rq_rlen)
  goto out;
 server->rstate = SMB_RECV_END;
out:
 VERBOSE("result: %d\n", result);
 return result;
}
