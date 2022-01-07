
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct timespec {unsigned long member_0; unsigned long member_1; } ;


 scalar_t__ get_jiffies_64 () ;
 scalar_t__ timespec_to_jiffies (struct timespec*) ;

__attribute__((used)) static u64 time_to_jiffies(unsigned long sec, unsigned long nsec)
{
 if (sec || nsec) {
  struct timespec ts = {sec, nsec};
  return get_jiffies_64() + timespec_to_jiffies(&ts);
 } else
  return 0;
}
