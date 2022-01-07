
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int text_width; int text_height; } ;


 int DLG_TRACE (char*) ;
 int SCOLS ;
 int SLINES ;
 TYPE_1__ dialog_state ;
 int real_auto_size (char const*,char const*,int*,int*,int,int) ;

void
dlg_auto_size(const char *title,
       const char *prompt,
       int *height,
       int *width,
       int boxlines,
       int mincols)
{
    DLG_TRACE(("# dlg_auto_size(%d,%d) limits %d,%d\n",
        *height, *width,
        boxlines, mincols));

    real_auto_size(title, prompt, height, width, boxlines, mincols);

    if (*width > SCOLS) {
 (*height)++;
 *width = SCOLS;
    }

    if (*height > SLINES) {
 *height = SLINES;
    }
    DLG_TRACE(("# ...dlg_auto_size(%d,%d) also %d,%d\n",
        *height, *width,
        dialog_state.text_height, dialog_state.text_width));
}
