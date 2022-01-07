
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int wm8766_registers_init (struct oxygen*) ;
 int wm8776_registers_init (struct oxygen*) ;
 int xonar_ds_handle_hp_jack (struct oxygen*) ;
 int xonar_enable_output (struct oxygen*) ;

__attribute__((used)) static void xonar_ds_resume(struct oxygen *chip)
{
 wm8776_registers_init(chip);
 wm8766_registers_init(chip);
 xonar_enable_output(chip);
 xonar_ds_handle_hp_jack(chip);
}
