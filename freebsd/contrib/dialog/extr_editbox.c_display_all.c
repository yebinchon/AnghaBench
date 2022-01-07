
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int dialog_attr ;
 int display_one (int *,char*,int,int,int,int) ;
 int dlg_attr_clear (int *,int,int ,int ) ;
 int getmaxx (int *) ;
 int getmaxy (int *) ;

__attribute__((used)) static void
display_all(WINDOW *win,
     char **list,
     int show_row,
     int firstrow,
     int lastrow,
     int chr_offset)
{
    int limit = getmaxy(win);
    int row;

    dlg_attr_clear(win, getmaxy(win), getmaxx(win), dialog_attr);
    if (lastrow - firstrow >= limit)
 lastrow = firstrow + limit;
    for (row = firstrow; row < lastrow; ++row) {
 if (!display_one(win, list[row],
    row, show_row, firstrow,
    (row == show_row) ? chr_offset : 0))
     break;
    }
}
