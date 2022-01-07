
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int dummy; } ;


 unsigned int GCOV_COUNTERS ;
 scalar_t__ counter_active (struct gcov_info*,unsigned int) ;

__attribute__((used)) static unsigned int num_counter_active(struct gcov_info *info)
{
 unsigned int i;
 unsigned int result = 0;

 for (i = 0; i < GCOV_COUNTERS; i++) {
  if (counter_active(info, i))
   result++;
 }
 return result;
}
