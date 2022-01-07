
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_lcdfb_info {int guard_time; } ;


 int ATMEL_LCDC_BUSY ;
 int ATMEL_LCDC_DMACON ;
 int ATMEL_LCDC_GUARDT_OFFSET ;
 int ATMEL_LCDC_PWRCON ;
 int lcdc_readl (struct atmel_lcdfb_info*,int ) ;
 int lcdc_writel (struct atmel_lcdfb_info*,int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void atmel_lcdfb_stop_nowait(struct atmel_lcdfb_info *sinfo)
{

 lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
   sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET);


 while (lcdc_readl(sinfo, ATMEL_LCDC_PWRCON) & ATMEL_LCDC_BUSY)
  msleep(10);

 lcdc_writel(sinfo, ATMEL_LCDC_DMACON, 0);
}
