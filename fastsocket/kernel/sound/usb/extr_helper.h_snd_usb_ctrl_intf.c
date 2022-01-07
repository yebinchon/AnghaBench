
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_usb_audio {int ctrl_intf; } ;
struct TYPE_2__ {int bInterfaceNumber; } ;


 TYPE_1__* get_iface_desc (int ) ;

__attribute__((used)) static inline int snd_usb_ctrl_intf(struct snd_usb_audio *chip)
{
 return get_iface_desc(chip->ctrl_intf)->bInterfaceNumber;
}
