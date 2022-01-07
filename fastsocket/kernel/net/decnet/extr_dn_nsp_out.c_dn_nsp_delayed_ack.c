
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {scalar_t__ ackxmt_oth; scalar_t__ numoth_rcv; scalar_t__ ackxmt_dat; scalar_t__ numdat_rcv; } ;


 struct dn_scp* DN_SK (struct sock*) ;
 int dn_nsp_send_data_ack (struct sock*) ;
 int dn_nsp_send_oth_ack (struct sock*) ;

void dn_nsp_delayed_ack(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->ackxmt_oth != scp->numoth_rcv)
  dn_nsp_send_oth_ack(sk);

 if (scp->ackxmt_dat != scp->numdat_rcv)
  dn_nsp_send_data_ack(sk);
}
