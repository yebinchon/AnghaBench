
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int EDB_PD1_LCD_DC_DC_EN ;
 int EDB_PD2_LCDEN ;
 int EDB_PD3_LCDBL ;
 int PDDR ;
 int SYSCON1 ;
 int SYSCON1_LCDEN ;
 int clps_readb (int ) ;
 int clps_readl (int ) ;
 int clps_writeb (int,int ) ;
 int clps_writel (int,int ) ;
 scalar_t__ machine_is_edb7211 () ;
 int udelay (int) ;

__attribute__((used)) static int clps7111fb_blank(int blank, struct fb_info *info)
{
     if (blank) {
  if (machine_is_edb7211()) {

   clps_writeb(clps_readb(PDDR) & ~EDB_PD3_LCDBL, PDDR);


   clps_writeb(clps_readb(PDDR) & ~EDB_PD1_LCD_DC_DC_EN, PDDR);


   udelay(100);


   clps_writeb(clps_readb(PDDR) & ~EDB_PD2_LCDEN, PDDR);


   clps_writel(clps_readl(SYSCON1) & ~SYSCON1_LCDEN,
     SYSCON1);
  }
 } else {
  if (machine_is_edb7211()) {

   clps_writel(clps_readl(SYSCON1) | SYSCON1_LCDEN,
     SYSCON1);


   clps_writeb(clps_readb(PDDR) | EDB_PD2_LCDEN, PDDR);


   udelay(100);


   clps_writeb(clps_readb(PDDR) | EDB_PD1_LCD_DC_DC_EN,
     PDDR);


   clps_writeb(clps_readb(PDDR) | EDB_PD3_LCDBL, PDDR);
  }
 }
 return 0;
}
