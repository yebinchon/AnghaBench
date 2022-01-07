
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tid; int server_uid; } ;
struct smb_sb_info {int recvq; TYPE_1__ opt; } ;
struct smb_request {scalar_t__ rq_bytes_sent; int rq_flags; int rq_queue; int rq_header; struct smb_sb_info* rq_server; } ;


 int EAGAIN ;
 int SMB_REQ_TRANSMITTED ;
 int WSET (int ,int ,int) ;
 int list_move_tail (int *,int *) ;
 int smb_pid ;
 int smb_send_request (struct smb_request*) ;
 int smb_tid ;
 int smb_uid ;

__attribute__((used)) static int smb_request_send_req(struct smb_request *req)
{
 struct smb_sb_info *server = req->rq_server;
 int result;

 if (req->rq_bytes_sent == 0) {
  WSET(req->rq_header, smb_tid, server->opt.tid);
  WSET(req->rq_header, smb_pid, 1);
  WSET(req->rq_header, smb_uid, server->opt.server_uid);
 }

 result = smb_send_request(req);
 if (result < 0 && result != -EAGAIN)
  goto out;

 result = 0;
 if (!(req->rq_flags & SMB_REQ_TRANSMITTED))
  goto out;

 list_move_tail(&req->rq_queue, &server->recvq);
 result = 1;
out:
 return result;
}
