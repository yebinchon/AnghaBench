
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CAP_NET_ADMIN ;
 unsigned long FL_MAX_LINGER ;
 unsigned long FL_MIN_LINGER ;
 unsigned long HZ ;
 int capable (int ) ;

__attribute__((used)) static unsigned long check_linger(unsigned long ttl)
{
 if (ttl < FL_MIN_LINGER)
  return FL_MIN_LINGER*HZ;
 if (ttl > FL_MAX_LINGER && !capable(CAP_NET_ADMIN))
  return 0;
 return ttl*HZ;
}
