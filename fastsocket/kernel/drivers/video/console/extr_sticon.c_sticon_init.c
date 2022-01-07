
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_can_do_color; int vc_cols; int vc_rows; } ;
struct sti_struct {int font_width; int font_height; } ;


 int sti_onscreen_x (struct sti_struct*) ;
 int sti_onscreen_y (struct sti_struct*) ;
 int sti_set (struct sti_struct*,int ,int ,int,int,int ) ;
 struct sti_struct* sticon_sti ;
 int vc_resize (struct vc_data*,int,int) ;

__attribute__((used)) static void sticon_init(struct vc_data *c, int init)
{
    struct sti_struct *sti = sticon_sti;
    int vc_cols, vc_rows;

    sti_set(sti, 0, 0, sti_onscreen_y(sti), sti_onscreen_x(sti), 0);
    vc_cols = sti_onscreen_x(sti) / sti->font_width;
    vc_rows = sti_onscreen_y(sti) / sti->font_height;
    c->vc_can_do_color = 1;

    if (init) {
 c->vc_cols = vc_cols;
 c->vc_rows = vc_rows;
    } else {


 vc_resize(c, vc_cols, vc_rows);

    }
}
