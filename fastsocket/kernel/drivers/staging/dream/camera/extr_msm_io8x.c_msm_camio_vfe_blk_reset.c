
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 scalar_t__ appbase ;
 int mdelay (int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void msm_camio_vfe_blk_reset(void)
{
 uint32_t val;

 val = readl(appbase + 0x00000210);
 val |= 0x1;
 writel(val, appbase + 0x00000210);
 mdelay(10);

 val = readl(appbase + 0x00000210);
 val &= ~0x1;
 writel(val, appbase + 0x00000210);
 mdelay(10);
}
