
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISP1301_I2C_OTG_CONTROL_1 ;
 int ISP1301_I2C_REG_CLEAR_ADDR ;
 int OTG1_VBUS_DRV ;
 int i2c_write (int ,int) ;

__attribute__((used)) static inline void isp1301_vbus_off(void)
{
 i2c_write(OTG1_VBUS_DRV,
    ISP1301_I2C_OTG_CONTROL_1 | ISP1301_I2C_REG_CLEAR_ADDR);
}
