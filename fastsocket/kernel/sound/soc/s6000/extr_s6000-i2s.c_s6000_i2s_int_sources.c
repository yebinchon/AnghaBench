
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6000_i2s_dev {int dummy; } ;


 int S6_I2S_INTERRUPT_CLEAR ;
 int S6_I2S_INTERRUPT_RAW ;
 unsigned int S6_I2S_INT_ALIGNMENT ;
 unsigned int S6_I2S_INT_OVERRUN ;
 unsigned int S6_I2S_INT_UNDERRUN ;
 unsigned int s6_i2s_read_reg (struct s6000_i2s_dev*,int ) ;
 int s6_i2s_write_reg (struct s6000_i2s_dev*,int ,unsigned int) ;

__attribute__((used)) static unsigned int s6000_i2s_int_sources(struct s6000_i2s_dev *dev)
{
 unsigned int pending;
 pending = s6_i2s_read_reg(dev, S6_I2S_INTERRUPT_RAW);
 pending &= S6_I2S_INT_ALIGNMENT |
     S6_I2S_INT_UNDERRUN |
     S6_I2S_INT_OVERRUN;
 s6_i2s_write_reg(dev, S6_I2S_INTERRUPT_CLEAR, pending);

 return pending;
}
