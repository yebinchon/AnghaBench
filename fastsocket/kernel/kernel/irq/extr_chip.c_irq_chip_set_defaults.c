
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_chip {scalar_t__ disable; scalar_t__ shutdown; scalar_t__ end; scalar_t__ typename; scalar_t__ name; scalar_t__ startup; scalar_t__ enable; } ;
struct TYPE_2__ {scalar_t__ end; } ;


 scalar_t__ default_disable ;
 scalar_t__ default_enable ;
 scalar_t__ default_shutdown ;
 scalar_t__ default_startup ;
 TYPE_1__ dummy_irq_chip ;

void irq_chip_set_defaults(struct irq_chip *chip)
{
 if (!chip->enable)
  chip->enable = default_enable;
 if (!chip->disable)
  chip->disable = default_disable;
 if (!chip->startup)
  chip->startup = default_startup;






 if (!chip->shutdown)
  chip->shutdown = chip->disable != default_disable ?
   chip->disable : default_shutdown;
 if (!chip->name)
  chip->name = chip->typename;
 if (!chip->end)
  chip->end = dummy_irq_chip.end;
}
