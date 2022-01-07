
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int dccps_gss; void* dccps_l_seq_win; int dccps_gsr; void* dccps_r_seq_win; } ;


 struct dccp_sock* dccp_sk (struct sock*) ;
 int dccp_update_gsr (struct sock*,int ) ;
 int dccp_update_gss (struct sock*,int ) ;

__attribute__((used)) static int dccp_hdlr_seq_win(struct sock *sk, u64 seq_win, bool rx)
{
 struct dccp_sock *dp = dccp_sk(sk);

 if (rx) {
  dp->dccps_r_seq_win = seq_win;

  dccp_update_gsr(sk, dp->dccps_gsr);
 } else {
  dp->dccps_l_seq_win = seq_win;

  dccp_update_gss(sk, dp->dccps_gss);
 }
 return 0;
}
