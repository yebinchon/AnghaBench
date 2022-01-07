
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int mid; scalar_t__ state; int conn_error; int xmitq; } ;
struct smb_request {scalar_t__* rq_header; int rq_flags; scalar_t__ rq_rcls; int rq_errno; int rq_err; int rq_mid; int rq_queue; int rq_wait; int * rq_buffer; scalar_t__ rq_trans2_command; struct smb_sb_info* rq_server; } ;


 scalar_t__ CONN_INVALID ;
 scalar_t__ CONN_VALID ;
 int EINTR ;
 int EIO ;
 int ERESTARTSYS ;
 scalar_t__ ERRSRV ;
 int ERRtimeout ;
 int HZ ;
 int PARANOIA (char*,...) ;
 int SMB_REQ_RECEIVED ;
 int VERBOSE (char*,scalar_t__) ;
 int WSET (scalar_t__*,int ,int ) ;
 scalar_t__ WVAL (scalar_t__*,int ) ;
 int add_xmit_stats (struct smb_request*) ;
 int current ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 scalar_t__ signal_pending (int ) ;
 int smb_com ;
 int smb_errno (struct smb_request*) ;
 int smb_flg ;
 int smb_lock_server (struct smb_sb_info*) ;
 scalar_t__ smb_lock_server_interruptible (struct smb_sb_info*) ;
 int smb_mid ;
 int smb_pid ;
 int smb_rcls ;
 int smb_request_send_req (struct smb_request*) ;
 int smb_rget (struct smb_request*) ;
 int smb_rput (struct smb_request*) ;
 int smb_setup_request (struct smb_request*) ;
 int smb_setup_trans2request (struct smb_request*) ;
 int smb_tid ;
 int smb_uid ;
 int smb_unlock_server (struct smb_sb_info*) ;
 int smb_wct ;
 int smbiod_retry (struct smb_sb_info*) ;
 int smbiod_wake_up () ;
 long wait_event_interruptible_timeout (int ,int,int) ;

int smb_add_request(struct smb_request *req)
{
 long timeleft;
 struct smb_sb_info *server = req->rq_server;
 int result = 0;

 smb_setup_request(req);
 if (req->rq_trans2_command) {
  if (req->rq_buffer == ((void*)0)) {
   PARANOIA("trans2 attempted without response buffer!\n");
   return -EIO;
  }
  result = smb_setup_trans2request(req);
 }
 if (result < 0)
  return result;






 if (smb_lock_server_interruptible(server))
  return -EINTR;
 if (server->mid > 0xf000)
  server->mid = 0;
 req->rq_mid = server->mid++;
 WSET(req->rq_header, smb_mid, req->rq_mid);

 result = 0;
 if (server->state == CONN_VALID) {
  if (list_empty(&server->xmitq))
   result = smb_request_send_req(req);
  if (result < 0) {

   server->conn_error = result;
   server->state = CONN_INVALID;
  }
 }
 if (result != 1)
  list_add_tail(&req->rq_queue, &server->xmitq);
 smb_rget(req);

 if (server->state != CONN_VALID)
  smbiod_retry(server);

 smb_unlock_server(server);

 smbiod_wake_up();

 timeleft = wait_event_interruptible_timeout(req->rq_wait,
        req->rq_flags & SMB_REQ_RECEIVED, 30*HZ);
 if (!timeleft || signal_pending(current)) {






  smb_lock_server(server);
  if (!list_empty(&req->rq_queue)) {
   list_del_init(&req->rq_queue);
   smb_rput(req);
  }
  smb_unlock_server(server);
 }

 if (!timeleft) {
  PARANOIA("request [%p, mid=%d] timed out!\n",
    req, req->rq_mid);
  VERBOSE("smb_com:  %02x\n", *(req->rq_header + smb_com));
  VERBOSE("smb_rcls: %02x\n", *(req->rq_header + smb_rcls));
  VERBOSE("smb_flg:  %02x\n", *(req->rq_header + smb_flg));
  VERBOSE("smb_tid:  %04x\n", WVAL(req->rq_header, smb_tid));
  VERBOSE("smb_pid:  %04x\n", WVAL(req->rq_header, smb_pid));
  VERBOSE("smb_uid:  %04x\n", WVAL(req->rq_header, smb_uid));
  VERBOSE("smb_mid:  %04x\n", WVAL(req->rq_header, smb_mid));
  VERBOSE("smb_wct:  %02x\n", *(req->rq_header + smb_wct));

  req->rq_rcls = ERRSRV;
  req->rq_err = ERRtimeout;


  smbiod_wake_up();
 }
 VERBOSE("woke up, rcls=%d\n", req->rq_rcls);

 if (req->rq_rcls != 0)
  req->rq_errno = smb_errno(req);
 if (signal_pending(current))
  req->rq_errno = -ERESTARTSYS;
 return req->rq_errno;
}
