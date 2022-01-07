
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6000_i2s_dev {int dummy; } ;


 int s6_i2s_read_reg (struct s6000_i2s_dev*,int) ;
 int s6_i2s_write_reg (struct s6000_i2s_dev*,int,int) ;

__attribute__((used)) static inline void s6_i2s_mod_reg(struct s6000_i2s_dev *dev, int reg,
      u32 mask, u32 val)
{
 val ^= s6_i2s_read_reg(dev, reg) & ~mask;
 s6_i2s_write_reg(dev, reg, val);
}
