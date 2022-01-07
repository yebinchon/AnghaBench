
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_fix_screeninfo {unsigned long smem_start; int type_aux; int xpanstep; int ypanstep; int accel; int line_length; scalar_t__ ywrapstep; int visual; int type; int smem_len; int id; } ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {TYPE_1__ st; } ;
struct atafb_par {int next_line; TYPE_2__ hw; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int EXTD_SHIFTER ;
 int FB_ACCEL_ATARIBLITT ;
 int FB_TYPE_INTERLEAVED_PLANES ;
 int FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_MONO10 ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int ST_HIGH ;
 scalar_t__ real_screen_base ;
 int screen_len ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int stste_encode_fix(struct fb_fix_screeninfo *fix,
       struct atafb_par *par)
{
 int mode;

 strcpy(fix->id, "Atari Builtin");
 fix->smem_start = (unsigned long)real_screen_base;
 fix->smem_len = screen_len;
 fix->type = FB_TYPE_INTERLEAVED_PLANES;
 fix->type_aux = 2;
 fix->visual = FB_VISUAL_PSEUDOCOLOR;
 mode = par->hw.st.mode & 3;
 if (mode == ST_HIGH) {
  fix->type = FB_TYPE_PACKED_PIXELS;
  fix->type_aux = 0;
  fix->visual = FB_VISUAL_MONO10;
 }
 if (ATARIHW_PRESENT(EXTD_SHIFTER)) {
  fix->xpanstep = 16;
  fix->ypanstep = 1;
 } else {
  fix->xpanstep = 0;
  fix->ypanstep = 0;
 }
 fix->ywrapstep = 0;
 fix->line_length = par->next_line;
 fix->accel = FB_ACCEL_ATARIBLITT;
 return 0;
}
