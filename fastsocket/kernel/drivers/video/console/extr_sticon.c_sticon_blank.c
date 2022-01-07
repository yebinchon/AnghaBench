
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_cols; int vc_rows; } ;


 int BLANK ;
 int sti_clear (int ,int ,int ,int ,int ,int ) ;
 int sticon_set_origin (struct vc_data*) ;
 int sticon_sti ;
 int vga_is_gfx ;

__attribute__((used)) static int sticon_blank(struct vc_data *c, int blank, int mode_switch)
{
    if (blank == 0) {
 if (mode_switch)
     vga_is_gfx = 0;
 return 1;
    }
    sticon_set_origin(c);
    sti_clear(sticon_sti, 0,0, c->vc_rows, c->vc_cols, BLANK);
    if (mode_switch)
 vga_is_gfx = 1;
    return 1;
}
