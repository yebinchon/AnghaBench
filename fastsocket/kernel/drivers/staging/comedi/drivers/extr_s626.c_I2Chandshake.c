
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct comedi_device {int dummy; } ;


 int I2C_BUSY ;
 int I2C_ERR ;
 int MC2_UPLD_IIC ;
 int MC_ENABLE (int ,int ) ;
 int MC_TEST (int ,int ) ;
 int P_I2CCTRL ;
 int P_MC2 ;
 int RR7146 (int ) ;
 int WR7146 (int ,int) ;

__attribute__((used)) static uint32_t I2Chandshake(struct comedi_device *dev, uint32_t val)
{

 WR7146(P_I2CCTRL, val);




 MC_ENABLE(P_MC2, MC2_UPLD_IIC);
 while (!MC_TEST(P_MC2, MC2_UPLD_IIC)) ;


 while ((RR7146(P_I2CCTRL) & (I2C_BUSY | I2C_ERR)) == I2C_BUSY) ;


 return RR7146(P_I2CCTRL) & I2C_ERR;

}
