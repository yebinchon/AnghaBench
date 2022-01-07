
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int xonar_ds_handle_hp_jack (struct oxygen*) ;

__attribute__((used)) static void xonar_ds_gpio_changed(struct oxygen *chip)
{
 xonar_ds_handle_hp_jack(chip);
}
