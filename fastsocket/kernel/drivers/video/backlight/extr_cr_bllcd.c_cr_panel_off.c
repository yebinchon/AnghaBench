
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CRVML_LVDS_ON ;
 int CRVML_PANEL_ON ;
 int CRVML_PANEL_PORT ;
 int HZ ;
 int gpio_bar ;
 int inl (int) ;
 int outl (int,int) ;
 int schedule_timeout (int) ;

__attribute__((used)) static void cr_panel_off(void)
{
 u32 addr = gpio_bar + CRVML_PANEL_PORT;
 u32 cur = inl(addr);


 if (cur & CRVML_LVDS_ON) {
  cur &= ~CRVML_LVDS_ON;
  outl(cur, addr);
 }
 if (cur & CRVML_PANEL_ON) {
  schedule_timeout(HZ / 10);
  outl(cur & ~CRVML_PANEL_ON, addr);
 }
}
