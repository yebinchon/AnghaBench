
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_xmit_timer; } ;


 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_write_xmit_timer ;
 int setup_timer (int *,int ,unsigned long) ;

__attribute__((used)) static void dccp_init_write_xmit_timer(struct sock *sk)
{
 struct dccp_sock *dp = dccp_sk(sk);

 setup_timer(&dp->dccps_xmit_timer, dccp_write_xmit_timer,
   (unsigned long)sk);
}
