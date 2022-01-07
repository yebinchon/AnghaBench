
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct davinci_mcbsp_dev {scalar_t__ base; } ;


 int __raw_writel (int ,scalar_t__) ;

__attribute__((used)) static inline void davinci_mcbsp_write_reg(struct davinci_mcbsp_dev *dev,
        int reg, u32 val)
{
 __raw_writel(val, dev->base + reg);
}
