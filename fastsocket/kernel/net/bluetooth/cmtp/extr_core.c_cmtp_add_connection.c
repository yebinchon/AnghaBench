
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int sk; } ;
struct cmtp_session {scalar_t__ state; int flags; int ** reassembly; int transmit; int applications; int msgnum; int wait; struct socket* sock; int name; int mtu; int bdaddr; } ;
struct cmtp_connadd_req {int flags; } ;
typedef int bdaddr_t ;
struct TYPE_4__ {int dst; int src; } ;
struct TYPE_3__ {int imtu; int omtu; } ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,...) ;
 int CLONE_KERNEL ;
 int CMTP_INITIAL_MSGNUM ;
 int CMTP_LOOPBACK ;
 int EEXIST ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct cmtp_session* __cmtp_get_session (int *) ;
 int __cmtp_link_session (struct cmtp_session*) ;
 int __cmtp_unlink_session (struct cmtp_session*) ;
 int bacpy (int *,int *) ;
 int baswap (int *,int *) ;
 char* batostr (int *) ;
 TYPE_2__* bt_sk (int ) ;
 int cmtp_attach_device (struct cmtp_session*) ;
 int cmtp_detach_device (struct cmtp_session*) ;
 int cmtp_session ;
 int cmtp_session_sem ;
 int down_write (int *) ;
 int init_waitqueue_head (int *) ;
 int kernel_thread (int ,struct cmtp_session*,int ) ;
 int kfree (struct cmtp_session*) ;
 struct cmtp_session* kzalloc (int,int ) ;
 TYPE_1__* l2cap_pi (int ) ;
 int min_t (int ,int ,int ) ;
 int skb_queue_head_init (int *) ;
 int sprintf (int ,char*,char*) ;
 int uint ;
 int up_write (int *) ;

int cmtp_add_connection(struct cmtp_connadd_req *req, struct socket *sock)
{
 struct cmtp_session *session, *s;
 bdaddr_t src, dst;
 int i, err;

 BT_DBG("");

 baswap(&src, &bt_sk(sock->sk)->src);
 baswap(&dst, &bt_sk(sock->sk)->dst);

 session = kzalloc(sizeof(struct cmtp_session), GFP_KERNEL);
 if (!session)
  return -ENOMEM;

 down_write(&cmtp_session_sem);

 s = __cmtp_get_session(&bt_sk(sock->sk)->dst);
 if (s && s->state == BT_CONNECTED) {
  err = -EEXIST;
  goto failed;
 }

 bacpy(&session->bdaddr, &bt_sk(sock->sk)->dst);

 session->mtu = min_t(uint, l2cap_pi(sock->sk)->omtu, l2cap_pi(sock->sk)->imtu);

 BT_DBG("mtu %d", session->mtu);

 sprintf(session->name, "%s", batostr(&dst));

 session->sock = sock;
 session->state = BT_CONFIG;

 init_waitqueue_head(&session->wait);

 session->msgnum = CMTP_INITIAL_MSGNUM;

 INIT_LIST_HEAD(&session->applications);

 skb_queue_head_init(&session->transmit);

 for (i = 0; i < 16; i++)
  session->reassembly[i] = ((void*)0);

 session->flags = req->flags;

 __cmtp_link_session(session);

 err = kernel_thread(cmtp_session, session, CLONE_KERNEL);
 if (err < 0)
  goto unlink;

 if (!(session->flags & (1 << CMTP_LOOPBACK))) {
  err = cmtp_attach_device(session);
  if (err < 0)
   goto detach;
 }

 up_write(&cmtp_session_sem);
 return 0;

detach:
 cmtp_detach_device(session);

unlink:
 __cmtp_unlink_session(session);

failed:
 up_write(&cmtp_session_sem);
 kfree(session);
 return err;
}
