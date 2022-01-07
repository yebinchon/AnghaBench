
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_state; int sk_err; } ;
struct rfcomm_session {int state; int mtu; TYPE_1__* sock; } ;
struct TYPE_4__ {int imtu; int omtu; } ;
struct TYPE_3__ {struct sock* sk; } ;



 int BT_CONNECT ;

 int BT_DBG (char*,struct rfcomm_session*,int) ;
 TYPE_2__* l2cap_pi (struct sock*) ;
 int min (int ,int ) ;
 int rfcomm_send_sabm (struct rfcomm_session*,int ) ;
 int rfcomm_session_close (struct rfcomm_session*,int ) ;

__attribute__((used)) static inline void rfcomm_check_connection(struct rfcomm_session *s)
{
 struct sock *sk = s->sock->sk;

 BT_DBG("%p state %ld", s, s->state);

 switch(sk->sk_state) {
 case 128:
  s->state = BT_CONNECT;



  s->mtu = min(l2cap_pi(sk)->omtu, l2cap_pi(sk)->imtu) - 5;

  rfcomm_send_sabm(s, 0);
  break;

 case 129:
  s->state = 129;
  rfcomm_session_close(s, sk->sk_err);
  break;
 }
}
