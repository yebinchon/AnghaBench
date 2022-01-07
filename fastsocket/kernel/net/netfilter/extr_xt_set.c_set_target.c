
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_target_param {int family; struct xt_set_info_target* targinfo; } ;
struct TYPE_3__ {scalar_t__ index; int flags; int dim; } ;
struct TYPE_4__ {scalar_t__ index; int flags; int dim; } ;
struct xt_set_info_target {TYPE_1__ del_set; TYPE_2__ add_set; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ IPSET_INVALID_ID ;
 unsigned int XT_CONTINUE ;
 int ip_set_add (scalar_t__,struct sk_buff*,int ,int ,int ) ;
 int ip_set_del (scalar_t__,struct sk_buff*,int ,int ,int ) ;

__attribute__((used)) static unsigned int
set_target(struct sk_buff *skb, const struct xt_target_param *par)
{
 const struct xt_set_info_target *info = par->targinfo;

 if (info->add_set.index != IPSET_INVALID_ID)
  ip_set_add(info->add_set.index,
      skb, par->family,
      info->add_set.dim,
      info->add_set.flags);
 if (info->del_set.index != IPSET_INVALID_ID)
  ip_set_del(info->del_set.index,
      skb, par->family,
      info->del_set.dim,
      info->del_set.flags);

 return XT_CONTINUE;
}
