
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 scalar_t__ nlm_grace_period ;
 int nlm_timeout ;
 unsigned long roundup (scalar_t__,int) ;

__attribute__((used)) static unsigned long get_lockd_grace_period(void)
{

 if (nlm_grace_period)
  return roundup(nlm_grace_period, nlm_timeout) * HZ;
 else
  return nlm_timeout * 5 * HZ;
}
