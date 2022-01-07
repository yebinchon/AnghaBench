
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int DIALOG_FORMITEM ;


 char menubox_attr ;
 scalar_t__ print_item (int *,int *,int,int) ;
 int wbkgdset (int *,char) ;
 int wclrtobot (int *) ;
 int wnoutrefresh (int *) ;

__attribute__((used)) static void
print_form(WINDOW *win, DIALOG_FORMITEM * item, int total, int scrollamt, int choice)
{
    int n;
    int count = 0;

    for (n = 0; n < total; ++n) {
 count += print_item(win, item + n, scrollamt, n == choice);
    }
    if (count) {
 wbkgdset(win, menubox_attr | ' ');
 wclrtobot(win);
 (void) wnoutrefresh(win);
    }
}
