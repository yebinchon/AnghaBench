
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_hdmi {int* params; } ;
struct oxygen {int dummy; } ;


 int IEC958_AES3_CON_FS_48000 ;
 int xonar_hdmi_init_commands (struct oxygen*,struct xonar_hdmi*) ;

void xonar_hdmi_init(struct oxygen *chip, struct xonar_hdmi *hdmi)
{
 hdmi->params[1] = IEC958_AES3_CON_FS_48000;
 hdmi->params[4] = 1;
 xonar_hdmi_init_commands(chip, hdmi);
}
