
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xtm {int weekday; int monthday; } ;
struct xt_time_info {int flags; scalar_t__ date_start; scalar_t__ date_stop; unsigned int daytime_start; unsigned int daytime_stop; int weekdays_match; int monthdays_match; } ;
struct xt_match_param {struct xt_time_info* matchinfo; } ;
struct TYPE_4__ {scalar_t__ tv64; } ;
struct sk_buff {TYPE_2__ tstamp; } ;
typedef scalar_t__ s64 ;
struct TYPE_3__ {int tz_minuteswest; } ;


 int NSEC_PER_SEC ;
 int XT_TIME_ALL_MONTHDAYS ;
 int XT_TIME_LOCAL_TZ ;
 int __net_timestamp (struct sk_buff*) ;
 scalar_t__ div_s64 (scalar_t__,int ) ;
 scalar_t__ ktime_to_ns (TYPE_2__) ;
 unsigned int localtime_1 (struct xtm*,scalar_t__) ;
 int localtime_2 (struct xtm*,scalar_t__) ;
 int localtime_3 (struct xtm*,scalar_t__) ;
 TYPE_1__ sys_tz ;

__attribute__((used)) static bool
time_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_time_info *info = par->matchinfo;
 unsigned int packet_time;
 struct xtm current_time;
 s64 stamp;
 if (skb->tstamp.tv64 == 0)
  __net_timestamp((struct sk_buff *)skb);

 stamp = ktime_to_ns(skb->tstamp);
 stamp = div_s64(stamp, NSEC_PER_SEC);

 if (info->flags & XT_TIME_LOCAL_TZ)

  stamp -= 60 * sys_tz.tz_minuteswest;
 if (stamp < info->date_start || stamp > info->date_stop)
  return 0;

 packet_time = localtime_1(&current_time, stamp);

 if (info->daytime_start < info->daytime_stop) {
  if (packet_time < info->daytime_start ||
      packet_time > info->daytime_stop)
   return 0;
 } else {
  if (packet_time < info->daytime_start &&
      packet_time > info->daytime_stop)
   return 0;
 }

 localtime_2(&current_time, stamp);

 if (!(info->weekdays_match & (1 << current_time.weekday)))
  return 0;


 if (info->monthdays_match != XT_TIME_ALL_MONTHDAYS) {
  localtime_3(&current_time, stamp);
  if (!(info->monthdays_match & (1 << current_time.monthday)))
   return 0;
 }

 return 1;
}
