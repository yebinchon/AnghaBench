
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp ;
struct snd_usb_caiaqdev {int dummy; } ;


 int EP1_CMD_AUTO_MSG ;
 int snd_usb_caiaq_send_command (struct snd_usb_caiaqdev*,int ,char*,int) ;

int snd_usb_caiaq_set_auto_msg(struct snd_usb_caiaqdev *dev,
          int digital, int analog, int erp)
{
 char tmp[3] = { digital, analog, erp };
 return snd_usb_caiaq_send_command(dev, EP1_CMD_AUTO_MSG,
       tmp, sizeof(tmp));
}
