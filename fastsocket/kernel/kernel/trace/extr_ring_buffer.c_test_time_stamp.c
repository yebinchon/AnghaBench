
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int TS_DELTA_TEST ;

__attribute__((used)) static inline int test_time_stamp(u64 delta)
{
 if (delta & TS_DELTA_TEST)
  return 1;
 return 0;
}
