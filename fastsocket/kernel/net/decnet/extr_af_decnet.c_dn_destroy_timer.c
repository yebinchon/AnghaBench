
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_socket; } ;
struct dn_scp {int persist; int state; int stamp; int nsp_rxtshift; } ;


 int DN_CN ;



 int DN_DRC ;
 struct dn_scp* DN_SK (struct sock*) ;
 int GFP_ATOMIC ;
 int HZ ;
 int NSP_DISCCONF ;
 int NSP_DISCINIT ;
 int NSP_REASON_DC ;
 int decnet_di_count ;
 int decnet_dn_count ;
 int decnet_dr_count ;
 int decnet_time_wait ;
 int dn_nsp_persist (struct sock*) ;
 int dn_nsp_send_disc (struct sock*,int ,int ,int ) ;
 int dn_unhash_sock (struct sock*) ;
 int jiffies ;
 int sock_put (struct sock*) ;

int dn_destroy_timer(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 scp->persist = dn_nsp_persist(sk);

 switch(scp->state) {
  case 130:
   dn_nsp_send_disc(sk, NSP_DISCINIT, 0, GFP_ATOMIC);
   if (scp->nsp_rxtshift >= decnet_di_count)
    scp->state = DN_CN;
   return 0;

  case 128:
   dn_nsp_send_disc(sk, NSP_DISCINIT, 0, GFP_ATOMIC);
   if (scp->nsp_rxtshift >= decnet_dr_count)
    scp->state = DN_DRC;
   return 0;

  case 129:
   if (scp->nsp_rxtshift < decnet_dn_count) {

    dn_nsp_send_disc(sk, NSP_DISCCONF, NSP_REASON_DC, GFP_ATOMIC);
    return 0;
   }
 }

 scp->persist = (HZ * decnet_time_wait);

 if (sk->sk_socket)
  return 0;

 if ((jiffies - scp->stamp) >= (HZ * decnet_time_wait)) {
  dn_unhash_sock(sk);
  sock_put(sk);
  return 1;
 }

 return 0;
}
