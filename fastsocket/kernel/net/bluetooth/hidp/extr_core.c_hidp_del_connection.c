
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct hidp_session {int terminate; TYPE_4__* ctrl_sock; TYPE_2__* intr_sock; int intr_transmit; int ctrl_transmit; } ;
struct hidp_conndel_req {int flags; int bdaddr; } ;
struct TYPE_8__ {TYPE_3__* sk; } ;
struct TYPE_7__ {void* sk_err; } ;
struct TYPE_6__ {TYPE_1__* sk; } ;
struct TYPE_5__ {void* sk_err; } ;


 int BT_DBG (char*) ;
 int ENOENT ;
 void* EUNATCH ;
 int HIDP_CTRL_VIRTUAL_CABLE_UNPLUG ;
 int HIDP_TRANS_HID_CONTROL ;
 int HIDP_VIRTUAL_CABLE_UNPLUG ;
 struct hidp_session* __hidp_get_session (int *) ;
 int atomic_inc (int *) ;
 int down_read (int *) ;
 int hidp_schedule (struct hidp_session*) ;
 int hidp_send_ctrl_message (struct hidp_session*,int,int *,int ) ;
 int hidp_session_sem ;
 int skb_queue_purge (int *) ;
 int up_read (int *) ;

int hidp_del_connection(struct hidp_conndel_req *req)
{
 struct hidp_session *session;
 int err = 0;

 BT_DBG("");

 down_read(&hidp_session_sem);

 session = __hidp_get_session(&req->bdaddr);
 if (session) {
  if (req->flags & (1 << HIDP_VIRTUAL_CABLE_UNPLUG)) {
   hidp_send_ctrl_message(session,
    HIDP_TRANS_HID_CONTROL | HIDP_CTRL_VIRTUAL_CABLE_UNPLUG, ((void*)0), 0);
  } else {

   skb_queue_purge(&session->ctrl_transmit);
   skb_queue_purge(&session->intr_transmit);


   session->intr_sock->sk->sk_err = EUNATCH;
   session->ctrl_sock->sk->sk_err = EUNATCH;


   atomic_inc(&session->terminate);
   hidp_schedule(session);
  }
 } else
  err = -ENOENT;

 up_read(&hidp_session_sem);
 return err;
}
