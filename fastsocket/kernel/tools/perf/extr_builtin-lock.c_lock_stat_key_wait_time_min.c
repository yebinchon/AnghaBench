
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct lock_stat {scalar_t__ wait_time_min; } ;


 scalar_t__ ULLONG_MAX ;

__attribute__((used)) static int lock_stat_key_wait_time_min(struct lock_stat *one,
     struct lock_stat *two)
{
 u64 s1 = one->wait_time_min;
 u64 s2 = two->wait_time_min;
 if (s1 == ULLONG_MAX)
  s1 = 0;
 if (s2 == ULLONG_MAX)
  s2 = 0;
 return s1 > s2;
}
