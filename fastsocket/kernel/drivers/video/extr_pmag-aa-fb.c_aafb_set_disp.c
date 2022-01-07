
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct fb_fix_screeninfo {int line_length; int ywrapstep; int ypanstep; int type_aux; int type; int visual; scalar_t__ smem_start; } ;
struct display {int next_line; int can_soft_blank; int scrollmode; scalar_t__ inverse; int line_length; int ywrapstep; int ypanstep; int type_aux; int type; int visual; int * screen_base; scalar_t__ dispsw_data; int * dispsw; TYPE_2__* conp; int var; int * fb_info; } ;
struct aafb_info {int info; } ;
struct TYPE_4__ {TYPE_1__* vc_sw; } ;
struct TYPE_3__ {int (* con_cursor ) (TYPE_2__*,int ) ;} ;


 int CM_ERASE ;
 int SCROLL_YREDRAW ;
 int aafb_get_fix (struct fb_fix_screeninfo*,int,int *) ;
 int aafb_set_var (int *,int,int *) ;
 int aafb_switch8 ;
 int aafbcon_set_font (struct display*,int ,int ) ;
 int fontheight (struct display*) ;
 int fontwidth (struct display*) ;
 int stub1 (TYPE_2__*,int ) ;

__attribute__((used)) static void aafb_set_disp(struct display *disp, int con,
     struct aafb_info *info)
{
 struct fb_fix_screeninfo fix;

 disp->fb_info = &info->info;
 aafb_set_var(&disp->var, con, &info->info);
 if (disp->conp && disp->conp->vc_sw && disp->conp->vc_sw->con_cursor)
  disp->conp->vc_sw->con_cursor(disp->conp, CM_ERASE);
 disp->dispsw = &aafb_switch8;
 disp->dispsw_data = 0;

 aafb_get_fix(&fix, con, &info->info);
 disp->screen_base = (u8 *) fix.smem_start;
 disp->visual = fix.visual;
 disp->type = fix.type;
 disp->type_aux = fix.type_aux;
 disp->ypanstep = fix.ypanstep;
 disp->ywrapstep = fix.ywrapstep;
 disp->line_length = fix.line_length;
 disp->next_line = 2048;
 disp->can_soft_blank = 1;
 disp->inverse = 0;
 disp->scrollmode = SCROLL_YREDRAW;

 aafbcon_set_font(disp, fontwidth(disp), fontheight(disp));
}
