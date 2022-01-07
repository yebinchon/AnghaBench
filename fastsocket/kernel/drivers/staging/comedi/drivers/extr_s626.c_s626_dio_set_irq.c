
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dio_private {int WRCapSel; int RDCapSel; int WRIntSel; int RDIntSel; int WREdgSel; int RDEdgSel; } ;
struct comedi_device {TYPE_1__* subdevices; } ;
struct TYPE_2__ {scalar_t__ private; } ;


 unsigned int DEBIread (struct comedi_device*,int ) ;
 int DEBIwrite (struct comedi_device*,int ,unsigned int) ;
 int DEBUG (char*,unsigned int,unsigned int) ;
 int LP_MISC1 ;
 unsigned int MISC1_EDCAP ;

__attribute__((used)) static int s626_dio_set_irq(struct comedi_device *dev, unsigned int chan)
{
 unsigned int group;
 unsigned int bitmask;
 unsigned int status;


 group = chan / 16;
 bitmask = 1 << (chan - (16 * group));
 DEBUG("s626_dio_set_irq: enable interrupt on dio channel %d group %d\n",
       chan - (16 * group), group);


 status = DEBIread(dev,
     ((struct dio_private *)(dev->subdevices + 2 +
        group)->private)->RDEdgSel);
 DEBIwrite(dev,
    ((struct dio_private *)(dev->subdevices + 2 +
       group)->private)->WREdgSel,
    bitmask | status);


 status = DEBIread(dev,
     ((struct dio_private *)(dev->subdevices + 2 +
        group)->private)->RDIntSel);
 DEBIwrite(dev,
    ((struct dio_private *)(dev->subdevices + 2 +
       group)->private)->WRIntSel,
    bitmask | status);


 DEBIwrite(dev, LP_MISC1, MISC1_EDCAP);


 status = DEBIread(dev,
     ((struct dio_private *)(dev->subdevices + 2 +
        group)->private)->RDCapSel);
 DEBIwrite(dev,
    ((struct dio_private *)(dev->subdevices + 2 +
       group)->private)->WRCapSel,
    bitmask | status);

 return 0;
}
