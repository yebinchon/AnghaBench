
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int sk_err_soft; int sk_sleep; } ;
struct atm_vcc {int flags; } ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_WAITING ;
 int DEFINE_WAIT (int ) ;
 int EUNATCH ;
 int TASK_INTERRUPTIBLE ;
 int as_dropparty ;
 int finish_wait (int ,int *) ;
 int lock_sock (struct sock*) ;
 int prepare_to_wait (int ,int *,int ) ;
 int release_sock (struct sock*) ;
 int schedule () ;
 int set_bit (int ,int *) ;
 scalar_t__ sigd ;
 int sigd_enq2 (struct atm_vcc*,int ,int *,int *,int *,int *,int) ;
 scalar_t__ test_bit (int ,int *) ;
 int wait ;
 int xchg (int *,int ) ;

__attribute__((used)) static int svc_dropparty(struct socket *sock, int ep_ref)
{
 DEFINE_WAIT(wait);
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc = ATM_SD(sock);
 int error;

 lock_sock(sk);
 set_bit(ATM_VF_WAITING, &vcc->flags);
 prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 sigd_enq2(vcc, as_dropparty, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ep_ref);
 while (test_bit(ATM_VF_WAITING, &vcc->flags) && sigd) {
  schedule();
  prepare_to_wait(sk->sk_sleep, &wait, TASK_INTERRUPTIBLE);
 }
 finish_wait(sk->sk_sleep, &wait);
 if (!sigd) {
  error = -EUNATCH;
  goto out;
 }
 error = xchg(&sk->sk_err_soft, 0);
out:
 release_sock(sk);
 return error;
}
