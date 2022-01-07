
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_9__ {int * items; TYPE_1__* list; } ;
struct TYPE_8__ {int top_index; int * win; } ;
typedef TYPE_1__ MY_DATA ;
typedef int DIALOG_LISTITEM ;
typedef TYPE_2__ ALL_DATA ;


 scalar_t__ ERR ;
 int TRACE (char*) ;
 int getmaxy (int *) ;
 int index2row (TYPE_2__*,int ,int) ;
 int * myItem (TYPE_1__*,int) ;
 int mySide (int) ;
 scalar_t__ okIndex (TYPE_2__*,int) ;
 int print_item (TYPE_2__*,int *,int *,int,int) ;
 scalar_t__ waddch (int *,char) ;
 scalar_t__ wmove (int *,int,int ) ;
 int wnoutrefresh (int *) ;

__attribute__((used)) static void
print_1_list(ALL_DATA * all,
      int choice,
      int selected)
{
    MY_DATA *data = all->list + selected;
    DIALOG_LISTITEM *target = (okIndex(all, choice)
          ? all->items + choice
          : 0);
    WINDOW *win = data->win;
    int i, j;
    int last = 0;
    int top_row = index2row(all, data->top_index, selected);
    int max_rows = getmaxy(win);

    TRACE(("! print_1_list %d %s, top %d\n", choice, mySide(selected), top_row));
    for (i = j = 0; j < max_rows; i++) {
 int ii = i + top_row;
 if (ii < 0) {
     continue;
 } else if (myItem(data, ii)) {
     print_item(all,
         win,
         myItem(data, ii),
         j, myItem(data, ii) == target);
     last = ++j;
 } else {
     break;
 }
    }
    if (wmove(win, last, 0) != ERR) {
 while (waddch(win, ' ') != ERR) {
     ;
 }
    }
    (void) wnoutrefresh(win);
}
