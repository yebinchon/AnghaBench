
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int A_COLOR ;
 int A_NORMAL ;
 int COLS ;
 scalar_t__ LINES ;
 scalar_t__ USE_ITEM_HELP (char const*) ;
 int addch (char) ;
 int dlg_attrset (int ,int) ;
 int dlg_print_text (int ,char const*,int,int *) ;
 int getyx (int ,int,int) ;
 int itemhelp_attr ;
 int stdscr ;
 int wclrtoeol (int ) ;
 int wmove (int ,scalar_t__,int ) ;
 int wnoutrefresh (int ) ;

void
dlg_item_help(const char *txt)
{
    if (USE_ITEM_HELP(txt)) {
 chtype attr = A_NORMAL;
 int y, x;

 dlg_attrset(stdscr, itemhelp_attr);
 (void) wmove(stdscr, LINES - 1, 0);
 (void) wclrtoeol(stdscr);
 (void) addch(' ');
 dlg_print_text(stdscr, txt, COLS - 1, &attr);
 if (itemhelp_attr & A_COLOR) {

     getyx(stdscr, y, x);
     (void) y;
     while (x < COLS) {
  (void) addch(' ');
  ++x;
     }
 }
 (void) wnoutrefresh(stdscr);
    }
}
