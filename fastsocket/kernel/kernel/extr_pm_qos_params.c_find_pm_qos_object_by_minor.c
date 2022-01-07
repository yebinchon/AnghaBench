
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int minor; } ;
struct TYPE_4__ {TYPE_1__ pm_qos_power_miscdev; } ;


 int PM_QOS_NUM_CLASSES ;
 TYPE_2__** pm_qos_array ;

__attribute__((used)) static int find_pm_qos_object_by_minor(int minor)
{
 int pm_qos_class;

 for (pm_qos_class = 0;
  pm_qos_class < PM_QOS_NUM_CLASSES; pm_qos_class++) {
  if (minor ==
   pm_qos_array[pm_qos_class]->pm_qos_power_miscdev.minor)
   return pm_qos_class;
 }
 return -1;
}
