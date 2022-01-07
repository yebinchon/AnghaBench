
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {scalar_t__ state; scalar_t__ rstate; int xmitq; } ;


 void* CONN_INVALID ;
 scalar_t__ CONN_VALID ;
 int SMBIOD_DATA_READY ;
 scalar_t__ SMB_RECV_REQUEST ;
 int list_empty (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ smb_recv_available (struct smb_sb_info*) ;
 int smb_request_recv (struct smb_sb_info*) ;
 int smb_request_send_server (struct smb_sb_info*) ;
 int smbiod_flags ;
 int smbiod_handle_request (struct smb_sb_info*) ;
 int smbiod_retry (struct smb_sb_info*) ;

__attribute__((used)) static void smbiod_doio(struct smb_sb_info *server)
{
 int result;
 int maxwork = 7;

 if (server->state != CONN_VALID)
  goto out;

 do {
  result = smb_request_recv(server);
  if (result < 0) {
   server->state = CONN_INVALID;
   smbiod_retry(server);
   goto out;
  } else if (server->rstate == SMB_RECV_REQUEST)
   smbiod_handle_request(server);
 } while (result > 0 && maxwork-- > 0);




 if (server->state != CONN_VALID)
  goto out;
 if (smb_recv_available(server) > 0)
  set_bit(SMBIOD_DATA_READY, &smbiod_flags);

 do {
  result = smb_request_send_server(server);
  if (result < 0) {
   server->state = CONN_INVALID;
   smbiod_retry(server);
   goto out;
  }
 } while (result > 0);




 if (!list_empty(&server->xmitq))
  set_bit(SMBIOD_DATA_READY, &smbiod_flags);

out:
 return;
}
