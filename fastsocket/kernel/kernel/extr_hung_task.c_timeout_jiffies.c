
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 unsigned long MAX_SCHEDULE_TIMEOUT ;

__attribute__((used)) static unsigned long timeout_jiffies(unsigned long timeout)
{

 return timeout ? timeout * HZ : MAX_SCHEDULE_TIMEOUT;
}
