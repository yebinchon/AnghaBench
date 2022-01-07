
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int notifier_call; } ;
struct azx {TYPE_1__ reboot_notifier; } ;


 int azx_halt ;
 int register_reboot_notifier (TYPE_1__*) ;

__attribute__((used)) static void azx_notifier_register(struct azx *chip)
{
 chip->reboot_notifier.notifier_call = azx_halt;
 register_reboot_notifier(&chip->reboot_notifier);
}
