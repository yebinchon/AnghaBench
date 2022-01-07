
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio_private {int WRCapSel; } ;
struct comedi_device {TYPE_1__* subdevices; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int DEBIwrite (struct comedi_device*,int ,unsigned int) ;
 int DEBUG (char*,unsigned int,unsigned int) ;
 int LP_MISC1 ;
 unsigned int MISC1_NOEDCAP ;

__attribute__((used)) static int s626_dio_reset_irq(struct comedi_device *dev, unsigned int group,
         unsigned int mask)
{
 DEBUG
     ("s626_dio_reset_irq: disable  interrupt on dio channel %d group %d\n",
      mask, group);


 DEBIwrite(dev, LP_MISC1, MISC1_NOEDCAP);


 DEBIwrite(dev,
    ((struct dio_private *)(dev->subdevices + 2 +
       group)->private)->WRCapSel, mask);

 return 0;
}
