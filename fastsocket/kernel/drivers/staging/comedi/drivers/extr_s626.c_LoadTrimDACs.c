
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct comedi_device {int dummy; } ;


 size_t ARRAY_SIZE (int ) ;
 int I2Cread (struct comedi_device*,int ) ;
 int WriteTrimDAC (struct comedi_device*,size_t,int ) ;
 int * trimadrs ;
 int trimchan ;

__attribute__((used)) static void LoadTrimDACs(struct comedi_device *dev)
{
 register uint8_t i;


 for (i = 0; i < ARRAY_SIZE(trimchan); i++)
  WriteTrimDAC(dev, i, I2Cread(dev, trimadrs[i]));
}
