
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_err; int (* sk_state_change ) (struct sock*) ;int sk_shutdown; } ;
struct atm_vcc {int flags; } ;


 int ATM_VF_CLOSE ;
 int ATM_VF_WAITING ;
 int RCV_SHUTDOWN ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 struct sock* sk_atm (struct atm_vcc*) ;
 int stub1 (struct sock*) ;

void vcc_release_async(struct atm_vcc *vcc, int reply)
{
 struct sock *sk = sk_atm(vcc);

 set_bit(ATM_VF_CLOSE, &vcc->flags);
 sk->sk_shutdown |= RCV_SHUTDOWN;
 sk->sk_err = -reply;
 clear_bit(ATM_VF_WAITING, &vcc->flags);
 sk->sk_state_change(sk);
}
