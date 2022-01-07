
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {scalar_t__ state; } ;


 scalar_t__ DN_CI ;
 struct dn_scp* DN_SK (struct sock*) ;
 int NSP_RCI ;
 int dn_nsp_send_conninit (struct sock*,int ) ;

__attribute__((used)) static int dn_nsp_retrans_conninit(struct sock *sk)
{
 struct dn_scp *scp = DN_SK(sk);

 if (scp->state == DN_CI)
  dn_nsp_send_conninit(sk, NSP_RCI);

 return 0;
}
