
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_timing {int hor_addr; int hor_blank_start; int hor_sync_start; int ver_addr; int ver_blank_start; int ver_sync_start; int ver_sync_end; int ver_blank_end; int ver_total; int hor_sync_end; int hor_blank_end; int hor_total; } ;



__attribute__((used)) static struct display_timing lcd_centering_timging(struct display_timing
         mode_crt_reg,
         struct display_timing panel_crt_reg)
{
 struct display_timing crt_reg;

 crt_reg.hor_total = panel_crt_reg.hor_total;
 crt_reg.hor_addr = mode_crt_reg.hor_addr;
 crt_reg.hor_blank_start =
     (panel_crt_reg.hor_addr - mode_crt_reg.hor_addr) / 2 +
     crt_reg.hor_addr;
 crt_reg.hor_blank_end = panel_crt_reg.hor_blank_end;
 crt_reg.hor_sync_start =
     (panel_crt_reg.hor_sync_start -
      panel_crt_reg.hor_blank_start) + crt_reg.hor_blank_start;
 crt_reg.hor_sync_end = panel_crt_reg.hor_sync_end;

 crt_reg.ver_total = panel_crt_reg.ver_total;
 crt_reg.ver_addr = mode_crt_reg.ver_addr;
 crt_reg.ver_blank_start =
     (panel_crt_reg.ver_addr - mode_crt_reg.ver_addr) / 2 +
     crt_reg.ver_addr;
 crt_reg.ver_blank_end = panel_crt_reg.ver_blank_end;
 crt_reg.ver_sync_start =
     (panel_crt_reg.ver_sync_start -
      panel_crt_reg.ver_blank_start) + crt_reg.ver_blank_start;
 crt_reg.ver_sync_end = panel_crt_reg.ver_sync_end;

 return crt_reg;
}
