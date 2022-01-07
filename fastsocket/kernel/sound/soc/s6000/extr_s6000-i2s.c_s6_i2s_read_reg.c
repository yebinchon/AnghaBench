
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct s6000_i2s_dev {scalar_t__ scbbase; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static inline u32 s6_i2s_read_reg(struct s6000_i2s_dev *dev, int reg)
{
 return readl(dev->scbbase + reg);
}
