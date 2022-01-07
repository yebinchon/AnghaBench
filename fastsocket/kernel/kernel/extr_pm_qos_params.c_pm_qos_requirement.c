
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target_value; } ;


 int atomic_read (int *) ;
 TYPE_1__** pm_qos_array ;

int pm_qos_requirement(int pm_qos_class)
{
 return atomic_read(&pm_qos_array[pm_qos_class]->target_value);
}
