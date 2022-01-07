
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct smb_hdr {int smb_buf_length; } ;
struct mid_q_entry {scalar_t__ mid_state; int resp_buf; int callback; int sequence_number; } ;
struct cifs_ses {TYPE_1__* server; } ;
struct TYPE_11__ {scalar_t__ tcpStatus; int sequence_number; int srv_mutex; } ;


 int CIFSMaxBufSize ;
 int const CIFS_ASYNC_OP ;
 scalar_t__ CifsExiting ;
 int DeleteMidQEntry ;
 int EIO ;
 int ENOENT ;
 int GlobalMid_Lock ;
 int MAX_CIFS_HDR_SIZE ;
 scalar_t__ MID_REQUEST_SUBMITTED ;
 scalar_t__ MID_RESPONSE_RECEIVED ;
 int allocate_mid (struct cifs_ses*,struct smb_hdr*,struct mid_q_entry**) ;
 int be32_to_cpu (int ) ;
 int cERROR (int,char*,...) ;
 int cifs_add_credits (TYPE_1__*,int) ;
 int cifs_check_receive (struct mid_q_entry*,TYPE_1__*,int ) ;
 int cifs_in_send_dec (TYPE_1__*) ;
 int cifs_in_send_inc (TYPE_1__*) ;
 int cifs_save_when_sent (struct mid_q_entry*) ;
 int cifs_sign_smb (struct smb_hdr*,TYPE_1__*,int *) ;
 int cifs_sync_mid_result (struct mid_q_entry*,TYPE_1__*) ;
 int delete_mid (struct mid_q_entry*) ;
 int get_rfc1002_length (int ) ;
 int memcpy (struct smb_hdr*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int send_nt_cancel (TYPE_1__*,struct smb_hdr*,struct mid_q_entry*) ;
 int smb_send (TYPE_1__*,struct smb_hdr*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wait_for_free_request (TYPE_1__*,int const) ;
 int wait_for_response (TYPE_1__*,struct mid_q_entry*) ;

int
SendReceive(const unsigned int xid, struct cifs_ses *ses,
     struct smb_hdr *in_buf, struct smb_hdr *out_buf,
     int *pbytes_returned, const int long_op)
{
 int rc = 0;
 struct mid_q_entry *midQ;

 if (ses == ((void*)0)) {
  cERROR(1, "Null smb session");
  return -EIO;
 }
 if (ses->server == ((void*)0)) {
  cERROR(1, "Null tcp session");
  return -EIO;
 }

 if (ses->server->tcpStatus == CifsExiting)
  return -ENOENT;





 if (be32_to_cpu(in_buf->smb_buf_length) > CIFSMaxBufSize +
   MAX_CIFS_HDR_SIZE - 4) {
  cERROR(1, "Illegal length, greater than maximum frame, %d",
      be32_to_cpu(in_buf->smb_buf_length));
  return -EIO;
 }

 rc = wait_for_free_request(ses->server, long_op);
 if (rc)
  return rc;





 mutex_lock(&ses->server->srv_mutex);

 rc = allocate_mid(ses, in_buf, &midQ);
 if (rc) {
  mutex_unlock(&ses->server->srv_mutex);

  cifs_add_credits(ses->server, 1);
  return rc;
 }

 rc = cifs_sign_smb(in_buf, ses->server, &midQ->sequence_number);
 if (rc) {
  mutex_unlock(&ses->server->srv_mutex);
  goto out;
 }

 midQ->mid_state = MID_REQUEST_SUBMITTED;

 cifs_in_send_inc(ses->server);
 rc = smb_send(ses->server, in_buf, be32_to_cpu(in_buf->smb_buf_length));
 cifs_in_send_dec(ses->server);
 cifs_save_when_sent(midQ);

 if (rc < 0)
  ses->server->sequence_number -= 2;

 mutex_unlock(&ses->server->srv_mutex);

 if (rc < 0)
  goto out;

 if (long_op == CIFS_ASYNC_OP)
  goto out;

 rc = wait_for_response(ses->server, midQ);
 if (rc != 0) {
  send_nt_cancel(ses->server, in_buf, midQ);
  spin_lock(&GlobalMid_Lock);
  if (midQ->mid_state == MID_REQUEST_SUBMITTED) {

   midQ->callback = DeleteMidQEntry;
   spin_unlock(&GlobalMid_Lock);
   cifs_add_credits(ses->server, 1);
   return rc;
  }
  spin_unlock(&GlobalMid_Lock);
 }

 rc = cifs_sync_mid_result(midQ, ses->server);
 if (rc != 0) {
  cifs_add_credits(ses->server, 1);
  return rc;
 }

 if (!midQ->resp_buf || !out_buf ||
     midQ->mid_state != MID_RESPONSE_RECEIVED) {
  rc = -EIO;
  cERROR(1, "Bad MID state?");
  goto out;
 }

 *pbytes_returned = get_rfc1002_length(midQ->resp_buf);
 memcpy(out_buf, midQ->resp_buf, *pbytes_returned + 4);
 rc = cifs_check_receive(midQ, ses->server, 0);
out:
 delete_mid(midQ);
 cifs_add_credits(ses->server, 1);

 return rc;
}
