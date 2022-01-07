
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int physical; } ;
struct intelfb_info {int cursor_on; TYPE_1__ cursor; scalar_t__ mobile; scalar_t__ cursor_blanked; } ;


 int CURSOR_A_BASEADDR ;
 int CURSOR_A_CONTROL ;
 int CURSOR_CONTROL ;
 int CURSOR_ENABLE ;
 int CURSOR_MODE_64_4C_AX ;
 int CURSOR_MODE_MASK ;
 int DBG_MSG (char*) ;
 int INREG (int ) ;
 scalar_t__ IS_I9XX (struct intelfb_info*) ;
 int OUTREG (int ,int ) ;

void intelfbhw_cursor_show(struct intelfb_info *dinfo)
{
 u32 tmp;





 dinfo->cursor_on = 1;

 if (dinfo->cursor_blanked)
  return;

 if (dinfo->mobile || IS_I9XX(dinfo)) {
  if (!dinfo->cursor.physical)
   return;
  tmp = INREG(CURSOR_A_CONTROL);
  tmp &= ~CURSOR_MODE_MASK;
  tmp |= CURSOR_MODE_64_4C_AX;
  OUTREG(CURSOR_A_CONTROL, tmp);

  OUTREG(CURSOR_A_BASEADDR, dinfo->cursor.physical);
 } else {
  tmp = INREG(CURSOR_CONTROL);
  tmp |= CURSOR_ENABLE;
  OUTREG(CURSOR_CONTROL, tmp);
 }
}
