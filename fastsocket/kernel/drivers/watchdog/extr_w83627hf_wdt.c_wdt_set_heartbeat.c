
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int timeout ;

__attribute__((used)) static int wdt_set_heartbeat(int t)
{
 if (t < 1 || t > 255)
  return -EINVAL;
 timeout = t;
 return 0;
}
