
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_sleep; } ;
struct cmtp_session {TYPE_1__* sock; } ;
struct TYPE_2__ {struct sock* sk; } ;


 int wake_up_interruptible (int ) ;

__attribute__((used)) static inline void cmtp_schedule(struct cmtp_session *session)
{
 struct sock *sk = session->sock->sk;

 wake_up_interruptible(sk->sk_sleep);
}
