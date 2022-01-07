
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xt_target_param {struct xt_secmark_target_info* targinfo; } ;
struct TYPE_3__ {int selsid; } ;
struct TYPE_4__ {TYPE_1__ sel; } ;
struct xt_secmark_target_info {int mode; TYPE_2__ u; } ;
struct sk_buff {int secmark; } ;


 int BUG () ;
 int BUG_ON (int) ;

 unsigned int XT_CONTINUE ;
 int mode ;

__attribute__((used)) static unsigned int
secmark_tg(struct sk_buff *skb, const struct xt_target_param *par)
{
 u32 secmark = 0;
 const struct xt_secmark_target_info *info = par->targinfo;

 BUG_ON(info->mode != mode);

 switch (mode) {
 case 128:
  secmark = info->u.sel.selsid;
  break;

 default:
  BUG();
 }

 skb->secmark = secmark;
 return XT_CONTINUE;
}
