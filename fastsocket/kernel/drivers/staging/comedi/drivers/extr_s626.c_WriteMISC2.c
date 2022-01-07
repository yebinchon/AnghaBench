
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct comedi_device {int dummy; } ;


 int DEBIwrite (struct comedi_device*,int ,int ) ;
 int LP_MISC1 ;
 int LP_WRMISC2 ;
 int MISC1_WDISABLE ;
 int MISC1_WENABLE ;

__attribute__((used)) static void WriteMISC2(struct comedi_device *dev, uint16_t NewImage)
{
 DEBIwrite(dev, LP_MISC1, MISC1_WENABLE);

 DEBIwrite(dev, LP_WRMISC2, NewImage);
 DEBIwrite(dev, LP_MISC1, MISC1_WDISABLE);
}
