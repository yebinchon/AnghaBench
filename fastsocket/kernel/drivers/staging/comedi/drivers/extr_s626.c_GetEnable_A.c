
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct enc_private {int MyCRB; } ;
struct comedi_device {int dummy; } ;


 int CRBBIT_CLKENAB_A ;
 int DEBIread (struct comedi_device*,int ) ;

__attribute__((used)) static uint16_t GetEnable_A(struct comedi_device *dev, struct enc_private *k)
{
 return (DEBIread(dev, k->MyCRB) >> CRBBIT_CLKENAB_A) & 1;
}
