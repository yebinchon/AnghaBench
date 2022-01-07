
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int FALSE ;
 int TRUE ;
 int dlg_show_string (int *,char*,int,int ,int,int ,int ,int,int) ;
 int form_active_text_attr ;
 int form_text_attr ;
 int getmaxx (int *) ;

__attribute__((used)) static bool
display_one(WINDOW *win,
     char *text,
     int thisrow,
     int show_row,
     int base_row,
     int chr_offset)
{
    bool result;

    if (text != 0) {
 dlg_show_string(win,
   text,
   chr_offset,
   ((thisrow == show_row)
    ? form_active_text_attr
    : form_text_attr),
   thisrow - base_row,
   0,
   getmaxx(win),
   FALSE,
   FALSE);
 result = TRUE;
    } else {
 result = FALSE;
    }
    return result;
}
