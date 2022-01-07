
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmtp_session {int terminate; int transmit; } ;
struct cmtp_conndel_req {int bdaddr; } ;


 int BT_DBG (char*) ;
 int ENOENT ;
 struct cmtp_session* __cmtp_get_session (int *) ;
 int atomic_inc (int *) ;
 int cmtp_schedule (struct cmtp_session*) ;
 int cmtp_session_sem ;
 int down_read (int *) ;
 int skb_queue_purge (int *) ;
 int up_read (int *) ;

int cmtp_del_connection(struct cmtp_conndel_req *req)
{
 struct cmtp_session *session;
 int err = 0;

 BT_DBG("");

 down_read(&cmtp_session_sem);

 session = __cmtp_get_session(&req->bdaddr);
 if (session) {

  skb_queue_purge(&session->transmit);


  atomic_inc(&session->terminate);
  cmtp_schedule(session);
 } else
  err = -ENOENT;

 up_read(&cmtp_session_sem);
 return err;
}
