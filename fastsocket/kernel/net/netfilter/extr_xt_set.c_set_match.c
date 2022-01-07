
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int dim; int index; } ;
struct xt_set_info_match {TYPE_1__ match_set; } ;
struct xt_match_param {int family; struct xt_set_info_match* matchinfo; } ;
struct sk_buff {int dummy; } ;


 int IPSET_INV_MATCH ;
 int match_set (int ,struct sk_buff const*,int ,int ,int,int) ;

__attribute__((used)) static bool
set_match(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_set_info_match *info = par->matchinfo;

 return match_set(info->match_set.index, skb, par->family,
    info->match_set.dim,
    info->match_set.flags,
    info->match_set.flags & IPSET_INV_MATCH);
}
