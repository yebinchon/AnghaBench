
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct list_head {int dummy; } ;
typedef int dccp_feat_val ;


 scalar_t__ DCCPF_CCID ;
 int EINVAL ;
 int ENOMEM ;
 int EOPNOTSUPP ;
 scalar_t__ FEAT_SP ;
 int ccid_support_check (scalar_t__ const*,scalar_t__) ;
 scalar_t__ dccp_feat_clone_sp_val (int *,scalar_t__ const*,scalar_t__) ;
 int dccp_feat_push_change (struct list_head*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int dccp_feat_sp_list_ok (scalar_t__,scalar_t__ const*,scalar_t__) ;
 scalar_t__ dccp_feat_type (scalar_t__) ;

__attribute__((used)) static int __feat_register_sp(struct list_head *fn, u8 feat, u8 is_local,
         u8 mandatory, u8 const *sp_val, u8 sp_len)
{
 dccp_feat_val fval;

 if (dccp_feat_type(feat) != FEAT_SP ||
     !dccp_feat_sp_list_ok(feat, sp_val, sp_len))
  return -EINVAL;


 if (feat == DCCPF_CCID && !ccid_support_check(sp_val, sp_len))
  return -EOPNOTSUPP;

 if (dccp_feat_clone_sp_val(&fval, sp_val, sp_len))
  return -ENOMEM;

 return dccp_feat_push_change(fn, feat, is_local, mandatory, &fval);
}
