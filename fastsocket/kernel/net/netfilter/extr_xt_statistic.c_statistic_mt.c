
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int every; } ;
struct TYPE_5__ {int probability; } ;
struct TYPE_7__ {TYPE_2__ nth; TYPE_1__ random; } ;
struct xt_statistic_info {int flags; int mode; TYPE_4__* master; TYPE_3__ u; } ;
struct xt_match_param {struct xt_statistic_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_8__ {int count; } ;


 int XT_STATISTIC_INVERT ;


 int net_random () ;
 int nth_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static bool
statistic_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_statistic_info *info = par->matchinfo;
 bool ret = info->flags & XT_STATISTIC_INVERT;

 switch (info->mode) {
 case 128:
  if ((net_random() & 0x7FFFFFFF) < info->u.random.probability)
   ret = !ret;
  break;
 case 129:
  spin_lock_bh(&nth_lock);
  if (info->master->count++ == info->u.nth.every) {
   info->master->count = 0;
   ret = !ret;
  }
  spin_unlock_bh(&nth_lock);
  break;
 }

 return ret;
}
