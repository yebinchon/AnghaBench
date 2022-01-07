
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcd_panel {int dummy; } ;


 unsigned int bklight_level ;

__attribute__((used)) static unsigned int omap3evm_bklight_getlevel(struct lcd_panel *panel)
{
 return bklight_level;
}
