
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_rqst {int dummy; } ;
struct mid_q_entry {int qhead; int mid_state; void* callback_data; int * callback; int * receive; } ;
struct TCP_Server_Info {int sequence_number; int request_q; int srv_mutex; int pending_mid_q; } ;
typedef int mid_receive_t ;
typedef int mid_callback_t ;


 int CIFS_ASYNC_OP ;
 int GlobalMid_Lock ;
 scalar_t__ IS_ERR (struct mid_q_entry*) ;
 int MID_REQUEST_SUBMITTED ;
 int PTR_ERR (struct mid_q_entry*) ;
 int cifs_add_credits (struct TCP_Server_Info*,int) ;
 int cifs_in_send_dec (struct TCP_Server_Info*) ;
 int cifs_in_send_inc (struct TCP_Server_Info*) ;
 int cifs_save_when_sent (struct mid_q_entry*) ;
 struct mid_q_entry* cifs_setup_async_request (struct TCP_Server_Info*,struct smb_rqst*) ;
 int delete_mid (struct mid_q_entry*) ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smb_send_rqst (struct TCP_Server_Info*,struct smb_rqst*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_free_request (struct TCP_Server_Info*,int ) ;
 int wake_up (int *) ;

int
cifs_call_async(struct TCP_Server_Info *server, struct smb_rqst *rqst,
  mid_receive_t *receive, mid_callback_t *callback,
  void *cbdata, bool ignore_pend)
{
 int rc;
 struct mid_q_entry *mid;

 rc = wait_for_free_request(server, ignore_pend ? CIFS_ASYNC_OP : 0);
 if (rc)
  return rc;

 mutex_lock(&server->srv_mutex);
 mid = cifs_setup_async_request(server, rqst);
 if (IS_ERR(mid)) {
  mutex_unlock(&server->srv_mutex);
  cifs_add_credits(server, 1);
  wake_up(&server->request_q);
  return PTR_ERR(mid);
 }

 mid->receive = receive;
 mid->callback = callback;
 mid->callback_data = cbdata;
 mid->mid_state = MID_REQUEST_SUBMITTED;


 spin_lock(&GlobalMid_Lock);
 list_add_tail(&mid->qhead, &server->pending_mid_q);
 spin_unlock(&GlobalMid_Lock);

 cifs_in_send_inc(server);
 rc = smb_send_rqst(server, rqst);
 cifs_in_send_dec(server);
 cifs_save_when_sent(mid);

 if (rc < 0)
  server->sequence_number -= 2;
 mutex_unlock(&server->srv_mutex);

 if (rc == 0)
  return 0;

 delete_mid(mid);
 cifs_add_credits(server, 1);
 wake_up(&server->request_q);
 return rc;
}
