
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct enc_private {scalar_t__ MyLatchLsw; } ;
struct comedi_device {int dummy; } ;


 scalar_t__ DEBIread (struct comedi_device*,scalar_t__) ;

__attribute__((used)) static uint32_t ReadLatch(struct comedi_device *dev, struct enc_private *k)
{
 register uint32_t value;



 value = (uint32_t) DEBIread(dev, k->MyLatchLsw);


 value |= ((uint32_t) DEBIread(dev, k->MyLatchLsw + 2) << 16);




 return value;
}
