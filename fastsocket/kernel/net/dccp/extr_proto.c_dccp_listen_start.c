
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dccp_sock {int dccps_role; } ;


 int DCCP_ROLE_LISTEN ;
 int EPROTO ;
 scalar_t__ dccp_feat_finalise_settings (struct dccp_sock*) ;
 struct dccp_sock* dccp_sk (struct sock*) ;
 int inet_csk_listen_start (struct sock*,int) ;

__attribute__((used)) static inline int dccp_listen_start(struct sock *sk, int backlog)
{
 struct dccp_sock *dp = dccp_sk(sk);

 dp->dccps_role = DCCP_ROLE_LISTEN;

 if (dccp_feat_finalise_settings(dp))
  return -EPROTO;
 return inet_csk_listen_start(sk, backlog);
}
