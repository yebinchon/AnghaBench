
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_lcdfb_info {int dummy; } ;


 int ATMEL_LCDC_DMABUSY ;
 int ATMEL_LCDC_DMACON ;
 int atmel_lcdfb_stop_nowait (struct atmel_lcdfb_info*) ;
 int lcdc_readl (struct atmel_lcdfb_info*,int ) ;
 int msleep (int) ;

__attribute__((used)) static void atmel_lcdfb_stop(struct atmel_lcdfb_info *sinfo)
{
 atmel_lcdfb_stop_nowait(sinfo);


 while (lcdc_readl(sinfo, ATMEL_LCDC_DMACON) & ATMEL_LCDC_DMABUSY)
  msleep(10);
}
