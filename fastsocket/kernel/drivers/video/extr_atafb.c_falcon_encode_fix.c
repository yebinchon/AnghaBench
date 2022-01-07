
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_fix_screeninfo {unsigned long smem_start; int type_aux; int xpanstep; int ypanstep; int accel; int line_length; int visual; void* type; scalar_t__ ywrapstep; int smem_len; int id; } ;
struct TYPE_3__ {int f_shift; scalar_t__ mono; } ;
struct TYPE_4__ {TYPE_1__ falcon; } ;
struct atafb_par {int next_line; TYPE_2__ hw; } ;


 int FB_ACCEL_ATARIBLITT ;
 void* FB_TYPE_INTERLEAVED_PLANES ;
 void* FB_TYPE_PACKED_PIXELS ;
 int FB_VISUAL_PSEUDOCOLOR ;
 int FB_VISUAL_TRUECOLOR ;
 scalar_t__ real_screen_base ;
 int screen_len ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int falcon_encode_fix(struct fb_fix_screeninfo *fix,
        struct atafb_par *par)
{
 strcpy(fix->id, "Atari Builtin");
 fix->smem_start = (unsigned long)real_screen_base;
 fix->smem_len = screen_len;
 fix->type = FB_TYPE_INTERLEAVED_PLANES;
 fix->type_aux = 2;
 fix->visual = FB_VISUAL_PSEUDOCOLOR;
 fix->xpanstep = 1;
 fix->ypanstep = 1;
 fix->ywrapstep = 0;
 if (par->hw.falcon.mono) {
  fix->type = FB_TYPE_PACKED_PIXELS;
  fix->type_aux = 0;

  fix->xpanstep = 32;
 } else if (par->hw.falcon.f_shift & 0x100) {
  fix->type = FB_TYPE_PACKED_PIXELS;
  fix->type_aux = 0;

  fix->visual = FB_VISUAL_TRUECOLOR;
  fix->xpanstep = 2;
 }
 fix->line_length = par->next_line;
 fix->accel = FB_ACCEL_ATARIBLITT;
 return 0;
}
