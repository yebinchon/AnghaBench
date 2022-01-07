
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct enc_private {scalar_t__ MyLatchLsw; } ;
struct comedi_device {int dummy; } ;


 int DEBIwrite (struct comedi_device*,int ,int ) ;
 int DEBUG (char*) ;

__attribute__((used)) static void Preload(struct comedi_device *dev, struct enc_private *k,
      uint32_t value)
{
 DEBUG("Preload: preload enter\n");
 DEBIwrite(dev, (uint16_t) (k->MyLatchLsw), (uint16_t) value);
 DEBUG("Preload: preload step 1\n");
 DEBIwrite(dev, (uint16_t) (k->MyLatchLsw + 2),
    (uint16_t) (value >> 16));
}
