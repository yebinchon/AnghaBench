
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct azx {TYPE_1__ reboot_notifier; } ;


 int unregister_reboot_notifier (TYPE_1__*) ;

__attribute__((used)) static void azx_notifier_unregister(struct azx *chip)
{
 if (chip->reboot_notifier.notifier_call)
  unregister_reboot_notifier(&chip->reboot_notifier);
}
