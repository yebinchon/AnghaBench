
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sock {int dummy; } ;
struct dccp_sock {int dccps_r_seq_win; int dccps_gsr; int dccps_swh; int dccps_swl; } ;


 int ADD48 (int ,int) ;
 int SUB48 (int ,int) ;
 struct dccp_sock* dccp_sk (struct sock*) ;

__attribute__((used)) static inline void dccp_update_gsr(struct sock *sk, u64 seq)
{
 struct dccp_sock *dp = dccp_sk(sk);

 dp->dccps_gsr = seq;

 dp->dccps_swl = SUB48(ADD48(dp->dccps_gsr, 1), dp->dccps_r_seq_win / 4);
 dp->dccps_swh = ADD48(dp->dccps_gsr, (3 * dp->dccps_r_seq_win) / 4);
}
