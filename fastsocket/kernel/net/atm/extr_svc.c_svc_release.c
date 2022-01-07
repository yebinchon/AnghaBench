
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct atm_vcc {int flags; } ;


 struct atm_vcc* ATM_SD (struct socket*) ;
 int ATM_VF_READY ;
 int clear_bit (int ,int *) ;
 int pr_debug (char*,struct atm_vcc*) ;
 int svc_disconnect (struct atm_vcc*) ;
 int vcc_release (struct socket*) ;

__attribute__((used)) static int svc_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct atm_vcc *vcc;

 if (sk) {
  vcc = ATM_SD(sock);
  pr_debug("svc_release %p\n", vcc);
  clear_bit(ATM_VF_READY, &vcc->flags);



  svc_disconnect(vcc);
  vcc_release(sock);
 }
 return 0;
}
