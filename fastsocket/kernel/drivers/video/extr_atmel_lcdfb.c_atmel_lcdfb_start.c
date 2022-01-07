
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_lcdfb_info {int default_dmacon; int guard_time; } ;


 int ATMEL_LCDC_DMACON ;
 int ATMEL_LCDC_GUARDT_OFFSET ;
 int ATMEL_LCDC_PWR ;
 int ATMEL_LCDC_PWRCON ;
 int lcdc_writel (struct atmel_lcdfb_info*,int ,int) ;

__attribute__((used)) static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
{
 lcdc_writel(sinfo, ATMEL_LCDC_DMACON, sinfo->default_dmacon);
 lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
  (sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
  | ATMEL_LCDC_PWR);
}
