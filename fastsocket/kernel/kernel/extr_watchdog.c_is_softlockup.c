
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long get_timestamp (int ) ;
 int smp_processor_id () ;
 scalar_t__ softlockup_thresh ;
 scalar_t__ time_after (unsigned long,scalar_t__) ;

__attribute__((used)) static int is_softlockup(unsigned long touch_ts)
{
 unsigned long now = get_timestamp(smp_processor_id());


 if (time_after(now, touch_ts + softlockup_thresh))
  return now - touch_ts;

 return 0;
}
