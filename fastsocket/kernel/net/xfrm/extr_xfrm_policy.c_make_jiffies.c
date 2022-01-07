
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int MAX_SCHEDULE_TIMEOUT ;

__attribute__((used)) static inline unsigned long make_jiffies(long secs)
{
 if (secs >= (MAX_SCHEDULE_TIMEOUT-1)/HZ)
  return MAX_SCHEDULE_TIMEOUT-1;
 else
  return secs*HZ;
}
