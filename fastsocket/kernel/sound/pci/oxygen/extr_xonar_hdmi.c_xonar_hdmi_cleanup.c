
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct oxygen {int dummy; } ;


 int hdmi_write_command (struct oxygen*,int,int,int *) ;

void xonar_hdmi_cleanup(struct oxygen *chip)
{
 u8 param = 0;

 hdmi_write_command(chip, 0x74, 1, &param);
}
