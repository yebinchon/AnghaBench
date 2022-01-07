
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DISPC_CONTROL ;
 int OMAP2_IO_ADDRESS (int ) ;
 int RFBI_CONTROL ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int dispc_read_reg (int ) ;
 int dispc_write_reg (int ,int) ;

__attribute__((used)) static void enable_rfbi_mode(int enable)
{
 u32 l;

 l = dispc_read_reg(DISPC_CONTROL);

 l &= ~((1 << 11) | (1 << 15) | (1 << 16));
 l |= enable ? (1 << 11) : 0;

 l |= 1 << 15;
 l |= enable ? 0 : (1 << 16);
 dispc_write_reg(DISPC_CONTROL, l);


 l = __raw_readl(OMAP2_IO_ADDRESS(RFBI_CONTROL));
 l |= enable ? 0 : (1 << 1);
 __raw_writel(l, OMAP2_IO_ADDRESS(RFBI_CONTROL));
}
