
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viadev {scalar_t__ hwptr_done; scalar_t__ lastpos; } ;
struct via82xx {int dummy; } ;


 int OFFSET_CONTROL ;
 int OFFSET_STATUS ;
 int OFFSET_TYPE ;
 int VIADEV_REG (struct viadev*,int ) ;
 int VIA_REG_CTRL_PAUSE ;
 int VIA_REG_CTRL_RESET ;
 int VIA_REG_CTRL_TERMINATE ;
 int inb (int ) ;
 int outb (int,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_via82xx_channel_reset(struct via82xx *chip, struct viadev *viadev)
{
 outb(VIA_REG_CTRL_PAUSE | VIA_REG_CTRL_TERMINATE | VIA_REG_CTRL_RESET,
      VIADEV_REG(viadev, OFFSET_CONTROL));
 inb(VIADEV_REG(viadev, OFFSET_CONTROL));
 udelay(50);

 outb(0x00, VIADEV_REG(viadev, OFFSET_CONTROL));

 outb(0x03, VIADEV_REG(viadev, OFFSET_STATUS));
 outb(0x00, VIADEV_REG(viadev, OFFSET_TYPE));

 viadev->lastpos = 0;
 viadev->hwptr_done = 0;
}
