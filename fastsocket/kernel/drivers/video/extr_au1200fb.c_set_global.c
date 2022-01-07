
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct au1200_lcd_global_regs_t {int flags; int brightness; int mask; int colorkey; int backcolor; } ;
struct TYPE_2__ {int pwmdiv; int pwmhi; int colorkeymsk; int colorkey; int backcolor; } ;


 int SCREEN_BACKCOLOR ;
 int SCREEN_BRIGHTNESS ;
 int SCREEN_COLORKEY ;
 int SCREEN_MASK ;
 int au_sync () ;
 TYPE_1__* lcd ;

__attribute__((used)) static void set_global(u_int cmd, struct au1200_lcd_global_regs_t *pdata)
{

 unsigned int hi1, divider;



 if (pdata->flags & SCREEN_BACKCOLOR)
  lcd->backcolor = pdata->backcolor;

 if (pdata->flags & SCREEN_BRIGHTNESS) {


  if (pdata->brightness < 30) {
   pdata->brightness = 30;
  }
  divider = (lcd->pwmdiv & 0x3FFFF) + 1;
  hi1 = (lcd->pwmhi >> 16) + 1;
  hi1 = (((pdata->brightness & 0xFF)+1) * divider >> 8);
  lcd->pwmhi &= 0xFFFF;
  lcd->pwmhi |= (hi1 << 16);
 }

 if (pdata->flags & SCREEN_COLORKEY)
  lcd->colorkey = pdata->colorkey;

 if (pdata->flags & SCREEN_MASK)
  lcd->colorkeymsk = pdata->mask;
 au_sync();
}
