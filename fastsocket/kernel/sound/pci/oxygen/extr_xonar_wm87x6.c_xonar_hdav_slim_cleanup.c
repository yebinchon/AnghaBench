
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int dummy; } ;


 int WM8776_RESET ;
 int msleep (int) ;
 int wm8776_write (struct oxygen*,int ,int ) ;
 int xonar_disable_output (struct oxygen*) ;
 int xonar_hdmi_cleanup (struct oxygen*) ;

__attribute__((used)) static void xonar_hdav_slim_cleanup(struct oxygen *chip)
{
 xonar_hdmi_cleanup(chip);
 xonar_disable_output(chip);
 wm8776_write(chip, WM8776_RESET, 0);
 msleep(2);
}
