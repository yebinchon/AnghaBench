
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int comadj; } ;


 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int locomolcd_dev ;
 int locomolcd_off (int) ;
 int locomolcd_on (int) ;
 scalar_t__ machine_is_collie () ;
 scalar_t__ machine_is_poodle () ;
 TYPE_1__ sharpsl_param ;

void locomolcd_power(int on)
{
 int comadj = sharpsl_param.comadj;
 unsigned long flags;

 local_irq_save(flags);

 if (!locomolcd_dev) {
  local_irq_restore(flags);
  return;
 }


 if (comadj == -1 && machine_is_collie())
  comadj = 128;
 if (comadj == -1 && machine_is_poodle())
  comadj = 118;

 if (on)
  locomolcd_on(comadj);
 else
  locomolcd_off(comadj);

 local_irq_restore(flags);
}
