
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6000_i2s_dev {int dummy; } ;


 int S6_I2S_DISABLE_IF ;
 int S6_I2S_ENABLE (int) ;
 int s6_i2s_write_reg (struct s6000_i2s_dev*,int ,int ) ;

__attribute__((used)) static void s6000_i2s_stop_channel(struct s6000_i2s_dev *dev, int channel)
{
 s6_i2s_write_reg(dev, S6_I2S_ENABLE(channel), S6_I2S_DISABLE_IF);
}
