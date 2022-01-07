
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_15__ {int atr; } ;
struct TYPE_14__ {int atr; } ;
struct TYPE_13__ {int atr; } ;
struct TYPE_12__ {int atr; } ;
struct TYPE_11__ {int atr; } ;
struct TYPE_10__ {int atr; } ;
struct TYPE_9__ {int atr; } ;
struct TYPE_16__ {TYPE_7__ item; TYPE_6__ item_selected; TYPE_5__ tag; TYPE_4__ tag_selected; TYPE_3__ check; TYPE_2__ check_selected; TYPE_1__ menubox; } ;


 scalar_t__ check_x ;
 TYPE_8__ dlg ;
 scalar_t__ item_is_tag (char) ;
 int * item_str () ;
 int item_x ;
 int list_width ;
 int mvwaddch (int *,int,int ,int ) ;
 int waddch (int *,char) ;
 int waddstr (int *,char*) ;
 int wattrset (int *,int ) ;
 int wmove (int *,int,scalar_t__) ;
 int wprintw (int *,char*,char) ;
 int wrefresh (int *) ;

__attribute__((used)) static void print_item(WINDOW * win, int choice, int selected)
{
 int i;


 wattrset(win, dlg.menubox.atr);
 wmove(win, choice, 0);
 for (i = 0; i < list_width; i++)
  waddch(win, ' ');

 wmove(win, choice, check_x);
 wattrset(win, selected ? dlg.check_selected.atr
   : dlg.check.atr);
 if (!item_is_tag(':'))
  wprintw(win, "(%c)", item_is_tag('X') ? 'X' : ' ');

 wattrset(win, selected ? dlg.tag_selected.atr : dlg.tag.atr);
 mvwaddch(win, choice, item_x, item_str()[0]);
 wattrset(win, selected ? dlg.item_selected.atr : dlg.item.atr);
 waddstr(win, (char *)item_str() + 1);
 if (selected) {
  wmove(win, choice, check_x + 1);
  wrefresh(win);
 }
}
