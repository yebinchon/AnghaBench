
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio_private {int WRCapSel; } ;
struct comedi_device {TYPE_1__* subdevices; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 int DEBIwrite (struct comedi_device*,int ,int) ;
 int LP_MISC1 ;
 int MISC1_NOEDCAP ;
 unsigned int S626_DIO_BANKS ;

__attribute__((used)) static int s626_dio_clear_irq(struct comedi_device *dev)
{
 unsigned int group;


 DEBIwrite(dev, LP_MISC1, MISC1_NOEDCAP);

 for (group = 0; group < S626_DIO_BANKS; group++) {

  DEBIwrite(dev,
     ((struct dio_private *)(dev->subdevices + 2 +
        group)->private)->WRCapSel,
     0xffff);
 }

 return 0;
}
