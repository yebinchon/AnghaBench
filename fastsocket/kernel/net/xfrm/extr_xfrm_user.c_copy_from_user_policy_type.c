
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct xfrm_userpolicy_type {int type; } ;
struct nlattr {int dummy; } ;


 size_t XFRMA_POLICY_TYPE ;
 int XFRM_POLICY_TYPE_MAIN ;
 struct xfrm_userpolicy_type* nla_data (struct nlattr*) ;
 int verify_policy_type (int ) ;

__attribute__((used)) static int copy_from_user_policy_type(u8 *tp, struct nlattr **attrs)
{
 struct nlattr *rt = attrs[XFRMA_POLICY_TYPE];
 struct xfrm_userpolicy_type *upt;
 u8 type = XFRM_POLICY_TYPE_MAIN;
 int err;

 if (rt) {
  upt = nla_data(rt);
  type = upt->type;
 }

 err = verify_policy_type(type);
 if (err)
  return err;

 *tp = type;
 return 0;
}
