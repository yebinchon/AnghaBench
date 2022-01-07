
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_sleep; } ;
struct hidp_session {TYPE_2__* intr_sock; TYPE_1__* ctrl_sock; } ;
struct TYPE_4__ {struct sock* sk; } ;
struct TYPE_3__ {struct sock* sk; } ;


 int wake_up_interruptible (int ) ;

__attribute__((used)) static inline void hidp_schedule(struct hidp_session *session)
{
 struct sock *ctrl_sk = session->ctrl_sock->sk;
 struct sock *intr_sk = session->intr_sock->sk;

 wake_up_interruptible(ctrl_sk->sk_sleep);
 wake_up_interruptible(intr_sk->sk_sleep);
}
