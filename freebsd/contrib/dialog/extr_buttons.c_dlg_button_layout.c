
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COLS ;
 int MARGIN ;
 scalar_t__ dlg_button_count (char const**) ;
 int dlg_button_x_step (char const**,int,int*,int*,int*) ;

void
dlg_button_layout(const char **labels, int *limit)
{
    int width = 1;
    int gap, margin, step;

    if (labels != 0 && dlg_button_count(labels)) {
 while (!dlg_button_x_step(labels, width, &gap, &margin, &step))
     ++width;
 width += (4 * MARGIN);
 if (width > COLS)
     width = COLS;
 if (width > *limit)
     *limit = width;
    }
}
