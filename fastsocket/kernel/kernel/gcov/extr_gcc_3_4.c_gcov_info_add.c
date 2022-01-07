
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_info {TYPE_1__* counts; } ;
struct TYPE_2__ {unsigned int num; scalar_t__* values; } ;


 unsigned int num_counter_active (struct gcov_info*) ;

void gcov_info_add(struct gcov_info *dest, struct gcov_info *source)
{
 unsigned int i;
 unsigned int j;

 for (i = 0; i < num_counter_active(dest); i++) {
  for (j = 0; j < dest->counts[i].num; j++) {
   dest->counts[i].values[j] +=
    source->counts[i].values[j];
  }
 }
}
