
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct comedi_device {int dummy; } ;


 int DEBUG (char*) ;
 int I2CR ;
 int I2CW ;
 int I2C_ATTRNOP ;
 int I2C_ATTRSTART ;
 int I2C_ATTRSTOP ;
 int I2C_B0 (int ,int ) ;
 int I2C_B1 (int ,scalar_t__) ;
 int I2C_B2 (int ,int ) ;
 scalar_t__ I2Chandshake (struct comedi_device*,int) ;
 int P_I2CCTRL ;
 int RR7146 (int ) ;

__attribute__((used)) static uint8_t I2Cread(struct comedi_device *dev, uint8_t addr)
{
 uint8_t rtnval;


 if (I2Chandshake(dev, I2C_B2(I2C_ATTRSTART, I2CW)

    | I2C_B1(I2C_ATTRSTOP, addr)

    | I2C_B0(I2C_ATTRNOP, 0))) {

  DEBUG("I2Cread: error handshake I2Cread  a\n");
  return 0;
 }

 if (I2Chandshake(dev, I2C_B2(I2C_ATTRSTART, I2CR)





    |I2C_B1(I2C_ATTRSTOP, 0)




    |I2C_B0(I2C_ATTRNOP, 0))) {


  DEBUG("I2Cread: error handshake I2Cread b\n");
  return 0;
 }

 rtnval = (uint8_t) (RR7146(P_I2CCTRL) >> 16);
 return rtnval;
}
