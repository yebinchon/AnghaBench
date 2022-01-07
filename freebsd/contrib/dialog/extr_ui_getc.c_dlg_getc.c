
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_9__ ;
typedef struct TYPE_11__ TYPE_8__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int WINDOW ;
struct TYPE_12__ {TYPE_1__* getc_redirect; int getc_callbacks; int screen_output; } ;
struct TYPE_11__ {int timeout_secs; int help_file; } ;
struct TYPE_10__ {int keep_win; int * win; int (* handle_getc ) (TYPE_1__*,int,int,int*) ;} ;
typedef TYPE_1__ DIALOG_CALLBACK ;
 int const DLG_CTRL (char) ;
 int DLG_TRACE (char*) ;

 int ESC ;
 int FALSE ;


 int TRUE ;
 int WTIMEOUT_VAL ;
 int check_inputs () ;
 int close (int) ;
 int curscr ;
 int dialog_helpfile (char*,int ,int ,int ) ;
 TYPE_9__ dialog_state ;
 TYPE_8__ dialog_vars ;
 int dlg_lookup_key (int *,int,int*) ;
 int dlg_raise_window (int *) ;
 int dlg_remove_callback (TYPE_1__*) ;
 int dlg_trace_chr (int,int) ;
 int dlg_trace_win (int *) ;
 int getyx (int *,int,int) ;
 int handle_inputs (int *) ;
 int isBeforeChr (int const) ;
 int isBeforeFkey (int const) ;
 int keypad (int *,int) ;
 scalar_t__ may_handle_inputs () ;
 TYPE_1__* next_callback (TYPE_1__*) ;
 TYPE_1__* prev_callback (TYPE_1__*) ;
 int really_getch (int *,int*) ;
 int stdin ;
 int stub1 (TYPE_1__*,int,int,int*) ;
 scalar_t__ time (scalar_t__*) ;
 int touchwin (int *) ;
 int valid_file (int ) ;
 int wmove (int *,int,int) ;
 int wrefresh (int ) ;
 int wtimeout (int *,int) ;

int
dlg_getc(WINDOW *win, int *fkey)
{
    WINDOW *save_win = win;
    int ch = 130;
    int before_chr;
    int before_fkey;
    int result;
    bool done = FALSE;
    bool literal = FALSE;
    DIALOG_CALLBACK *p = 0;
    int interval = (dialog_vars.timeout_secs * 1000);
    time_t expired = time((time_t *) 0) + dialog_vars.timeout_secs;
    time_t current;

    if (may_handle_inputs())
 wtimeout(win, WTIMEOUT_VAL);
    else if (interval > 0)
 wtimeout(win, interval);

    while (!done) {
 bool handle_others = FALSE;




 ch = really_getch(win, fkey);
 if (literal) {
     done = TRUE;
     continue;
 }

 before_chr = ch;
 before_fkey = *fkey;

 ch = dlg_lookup_key(win, ch, fkey);
 dlg_trace_chr(ch, *fkey);

 current = time((time_t *) 0);





 if (!*fkey || *fkey != before_fkey) {
     switch (ch) {
     case 136:
  literal = TRUE;
  keypad(win, FALSE);
  continue;
     case 135:
  (void) touchwin(win);
  (void) wrefresh(curscr);
  break;
     case 130:
  if (interval > 0
      && current >= expired) {
      DLG_TRACE(("# dlg_getc: timeout expired\n"));
      ch = ESC;
      done = TRUE;
  } else if (!valid_file(stdin)
      || !valid_file(dialog_state.screen_output)) {
      DLG_TRACE(("# dlg_getc: input or output is invalid\n"));
      ch = ESC;
      done = TRUE;
  } else if (check_inputs()) {
      if (handle_inputs(win))
   dlg_raise_window(win);
      else
   done = TRUE;
  } else {
      done = (interval <= 0);
  }
  break;
     case 131:
  if (dialog_vars.help_file) {
      int yold, xold;
      getyx(win, yold, xold);
      dialog_helpfile("HELP", dialog_vars.help_file, 0, 0);
      dlg_raise_window(win);
      wmove(win, yold, xold);
  }
  continue;
     case 132:

     case 129:

     case 133:

     case 128:





  if (dialog_state.getc_callbacks != 0 &&
      (isBeforeChr(128) ||
       isBeforeFkey(129))) {
      p = (isBeforeChr(128)
    ? next_callback(p)
    : prev_callback(p));
      if ((dialog_state.getc_redirect = p) != 0) {
   win = p->win;
      } else {
   win = save_win;
      }
      dlg_raise_window(win);
      break;
  }

     default:
  handle_others = TRUE;
  break;





     }
 } else {
     handle_others = TRUE;
 }

 if (handle_others) {
     if ((p = dialog_state.getc_redirect) != 0) {
  if (!(p->handle_getc(p, ch, *fkey, &result))) {
      done = (p->win == save_win) && (!p->keep_win);
      dlg_remove_callback(p);
      dialog_state.getc_redirect = 0;
      win = save_win;
  }
     } else {
  done = TRUE;
     }
 }
    }
    if (literal)
 keypad(win, TRUE);
    return ch;
}
