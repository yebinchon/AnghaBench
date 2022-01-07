
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int histogram_values ;
struct TYPE_2__ {int (* find_values_to_profile ) (int *) ;} ;


 int stub1 (int *) ;
 TYPE_1__* value_prof_hooks ;

void
find_values_to_profile (histogram_values *values)
{
  (value_prof_hooks->find_values_to_profile) (values);
}
