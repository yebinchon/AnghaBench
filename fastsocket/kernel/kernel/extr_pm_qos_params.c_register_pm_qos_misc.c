
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fops; int name; int minor; } ;
struct pm_qos_object {TYPE_1__ pm_qos_power_miscdev; int name; } ;


 int MISC_DYNAMIC_MINOR ;
 int misc_register (TYPE_1__*) ;
 int pm_qos_power_fops ;

__attribute__((used)) static int register_pm_qos_misc(struct pm_qos_object *qos)
{
 qos->pm_qos_power_miscdev.minor = MISC_DYNAMIC_MINOR;
 qos->pm_qos_power_miscdev.name = qos->name;
 qos->pm_qos_power_miscdev.fops = &pm_qos_power_fops;

 return misc_register(&qos->pm_qos_power_miscdev);
}
