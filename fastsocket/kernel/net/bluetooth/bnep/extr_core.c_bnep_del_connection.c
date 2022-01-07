
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct bnep_session {TYPE_2__* sock; int killed; } ;
struct bnep_conndel_req {int dst; } ;
struct TYPE_4__ {TYPE_1__* sk; } ;
struct TYPE_3__ {int sk_sleep; int sk_err; } ;


 int BT_DBG (char*) ;
 int ENOENT ;
 int EUNATCH ;
 struct bnep_session* __bnep_get_session (int ) ;
 int atomic_inc (int *) ;
 int bnep_session_sem ;
 int down_read (int *) ;
 int up_read (int *) ;
 int wake_up_interruptible (int ) ;

int bnep_del_connection(struct bnep_conndel_req *req)
{
 struct bnep_session *s;
 int err = 0;

 BT_DBG("");

 down_read(&bnep_session_sem);

 s = __bnep_get_session(req->dst);
 if (s) {


  s->sock->sk->sk_err = EUNATCH;


  atomic_inc(&s->killed);
  wake_up_interruptible(s->sock->sk->sk_sleep);
 } else
  err = -ENOENT;

 up_read(&bnep_session_sem);
 return err;
}
