
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int ERR ;
 int KEY_RESIZE ;
 int dlg_trace_msg (char*,int,char*) ;
 int dlg_trace_win (int *) ;
 int ungetch (int) ;
 int wgetch (int *) ;
 int wtimeout (int *,int) ;

void
dlg_will_resize(WINDOW *win)
{
    int n, ch, base;
    int caught = 0;

    dlg_trace_win(win);
    wtimeout(win, 20);
    for (n = base = 0; n < base + 10; ++n) {
 if ((ch = wgetch(win)) != ERR) {
     if (ch == KEY_RESIZE) {
  base = n;
  ++caught;
     } else {
  ungetch(ch);
  break;
     }
 }
    }
    dlg_trace_msg("# caught %d KEY_RESIZE key%s\n",
    1 + caught,
    caught == 1 ? "" : "s");
}
