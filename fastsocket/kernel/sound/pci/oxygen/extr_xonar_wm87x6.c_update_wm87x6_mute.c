
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {scalar_t__ dac_mute; } ;


 int WM8766_DAC_CTRL2 ;
 int WM8766_DMUTE_MASK ;
 int WM8766_ZCD ;
 int update_wm8776_mute (struct oxygen*) ;
 int wm8766_write_cached (struct oxygen*,int ,int) ;

__attribute__((used)) static void update_wm87x6_mute(struct oxygen *chip)
{
 update_wm8776_mute(chip);
 wm8766_write_cached(chip, WM8766_DAC_CTRL2, WM8766_ZCD |
       (chip->dac_mute ? WM8766_DMUTE_MASK : 0));
}
