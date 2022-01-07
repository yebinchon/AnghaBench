
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_device {struct comedi_subdevice* subdevices; } ;
struct TYPE_2__ {int WRDOut; int WREdgSel; int WRCapSel; int WRIntSel; } ;


 int DEBIwrite (struct comedi_device*,int ,int) ;
 int DEBUG (char*) ;
 int LP_MISC1 ;
 int MISC1_NOEDCAP ;
 scalar_t__ S626_DIO_BANKS ;
 TYPE_1__* diopriv ;

__attribute__((used)) static void s626_dio_init(struct comedi_device *dev)
{
 uint16_t group;
 struct comedi_subdevice *s;


 DEBIwrite(dev, LP_MISC1, MISC1_NOEDCAP);


 for (group = 0; group < S626_DIO_BANKS; group++) {
  s = dev->subdevices + 2 + group;
  DEBIwrite(dev, diopriv->WRIntSel, 0);
  DEBIwrite(dev, diopriv->WRCapSel, 0xFFFF);

  DEBIwrite(dev, diopriv->WREdgSel, 0);


  DEBIwrite(dev, diopriv->WRDOut, 0);

 }
 DEBUG("s626_dio_init: DIO initialized \n");
}
