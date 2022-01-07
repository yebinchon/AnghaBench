
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xonar_hdmi {int dummy; } ;
struct oxygen {int dummy; } ;


 int xonar_hdmi_init_commands (struct oxygen*,struct xonar_hdmi*) ;

void xonar_hdmi_resume(struct oxygen *chip, struct xonar_hdmi *hdmi)
{
 xonar_hdmi_init_commands(chip, hdmi);
}
