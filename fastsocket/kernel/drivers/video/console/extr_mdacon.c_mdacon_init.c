
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_complement_mask; int vc_rows; int vc_cols; struct vc_data** vc_display_fg; } ;


 struct vc_data* mda_display_fg ;
 int mda_num_columns ;
 int mda_num_lines ;
 int vc_resize (struct vc_data*,int ,int ) ;

__attribute__((used)) static void mdacon_init(struct vc_data *c, int init)
{
 c->vc_complement_mask = 0x0800;
 c->vc_display_fg = &mda_display_fg;

 if (init) {
  c->vc_cols = mda_num_columns;
  c->vc_rows = mda_num_lines;
 } else
  vc_resize(c, mda_num_columns, mda_num_lines);



 if (mda_display_fg == ((void*)0))
  mda_display_fg = c;
}
