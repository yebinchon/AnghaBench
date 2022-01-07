
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long HZ ;
 unsigned long jiffies ;

__attribute__((used)) static unsigned long round_jiffies_common(unsigned long j, int cpu,
  bool force_up)
{
 int rem;
 unsigned long original = j;
 j += cpu * 3;

 rem = j % HZ;
 if (rem < HZ/4 && !force_up)
  j = j - rem;
 else
  j = j - rem + HZ;


 j -= cpu * 3;

 if (j <= jiffies)
  return original;
 return j;
}
