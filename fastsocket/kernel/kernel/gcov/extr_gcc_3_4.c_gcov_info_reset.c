
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gcov_info {TYPE_1__* counts; } ;
typedef int gcov_type ;
struct TYPE_2__ {int num; int values; } ;


 int memset (int ,int ,int) ;
 unsigned int num_counter_active (struct gcov_info*) ;

void gcov_info_reset(struct gcov_info *info)
{
 unsigned int active = num_counter_active(info);
 unsigned int i;

 for (i = 0; i < active; i++) {
  memset(info->counts[i].values, 0,
         info->counts[i].num * sizeof(gcov_type));
 }
}
