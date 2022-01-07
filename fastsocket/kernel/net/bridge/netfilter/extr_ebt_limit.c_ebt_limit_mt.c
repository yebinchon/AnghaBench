
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_match_param {scalar_t__ matchinfo; } ;
struct sk_buff {int dummy; } ;
struct ebt_limit_info {scalar_t__ credit; scalar_t__ credit_cap; scalar_t__ cost; int prev; } ;


 unsigned long CREDITS_PER_JIFFY ;
 unsigned long jiffies ;
 int limit_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 unsigned long xchg (int *,unsigned long) ;

__attribute__((used)) static bool
ebt_limit_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 struct ebt_limit_info *info = (void *)par->matchinfo;
 unsigned long now = jiffies;

 spin_lock_bh(&limit_lock);
 info->credit += (now - xchg(&info->prev, now)) * CREDITS_PER_JIFFY;
 if (info->credit > info->credit_cap)
  info->credit = info->credit_cap;

 if (info->credit >= info->cost) {

  info->credit -= info->cost;
  spin_unlock_bh(&limit_lock);
  return 1;
 }

 spin_unlock_bh(&limit_lock);
 return 0;
}
