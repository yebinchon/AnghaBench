
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int dccps_featneg; } ;


 scalar_t__ DCCP_CLOSED ;
 int EINVAL ;
 int EISCONN ;
 scalar_t__ FEAT_NN ;
 int __feat_register_nn (int *,int ,int ,int ) ;
 scalar_t__ dccp_feat_type (int ) ;
 TYPE_1__* dccp_sk (struct sock*) ;

int dccp_feat_register_nn(struct sock *sk, u8 feat, u64 val)
{

 if (sk->sk_state != DCCP_CLOSED)
  return -EISCONN;
 if (dccp_feat_type(feat) != FEAT_NN)
  return -EINVAL;
 return __feat_register_nn(&dccp_sk(sk)->dccps_featneg, feat, 0, val);
}
