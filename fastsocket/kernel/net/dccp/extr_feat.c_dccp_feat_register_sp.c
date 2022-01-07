
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sock {scalar_t__ sk_state; } ;
struct TYPE_2__ {int dccps_featneg; } ;


 scalar_t__ DCCP_CLOSED ;
 int EINVAL ;
 int EISCONN ;
 scalar_t__ FEAT_SP ;
 int __feat_register_sp (int *,int ,int ,int ,int const*,int ) ;
 scalar_t__ dccp_feat_type (int ) ;
 TYPE_1__* dccp_sk (struct sock*) ;

int dccp_feat_register_sp(struct sock *sk, u8 feat, u8 is_local,
     u8 const *list, u8 len)
{
 if (sk->sk_state != DCCP_CLOSED)
  return -EISCONN;
 if (dccp_feat_type(feat) != FEAT_SP)
  return -EINVAL;
 return __feat_register_sp(&dccp_sk(sk)->dccps_featneg, feat, is_local,
      0, list, len);
}
