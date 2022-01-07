
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_5__ {int atr; } ;
struct TYPE_4__ {int atr; } ;
struct TYPE_6__ {TYPE_2__ dialog; TYPE_1__ border; } ;


 int ACS_HLINE ;
 int ACS_LTEE ;
 int ACS_RTEE ;
 int COLS ;
 int ERRDISPLAYTOOSMALL ;




 int LINES ;

 int TRUE ;
 int delwin (int *) ;
 TYPE_3__ dlg ;
 int draw_box (int *,int ,int ,int,int,int ,int ) ;
 int draw_shadow (int ,int,int,int,int) ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int keypad (int *,int ) ;
 int mvwaddch (int *,int,int ,int ) ;
 int * newwin (int,int,int,int) ;
 int on_key_esc (int *) ;
 int on_key_resize () ;
 int print_autowrap (int *,char const*,int,int,int) ;
 int print_buttons (int *,int,int,int) ;
 int print_title (int *,char const*,int) ;
 int stdscr ;
 int waddch (int *,int ) ;
 int wattrset (int *,int ) ;
 int wgetch (int *) ;
 int wrefresh (int *) ;

int dialog_yesno(const char *title, const char *prompt, int height, int width)
{
 int i, x, y, key = 0, button = 0;
 WINDOW *dialog;

do_resize:
 if (getmaxy(stdscr) < (height + 4))
  return -ERRDISPLAYTOOSMALL;
 if (getmaxx(stdscr) < (width + 4))
  return -ERRDISPLAYTOOSMALL;


 x = (COLS - width) / 2;
 y = (LINES - height) / 2;

 draw_shadow(stdscr, y, x, height, width);

 dialog = newwin(height, width, y, x);
 keypad(dialog, TRUE);

 draw_box(dialog, 0, 0, height, width,
   dlg.dialog.atr, dlg.border.atr);
 wattrset(dialog, dlg.border.atr);
 mvwaddch(dialog, height - 3, 0, ACS_LTEE);
 for (i = 0; i < width - 2; i++)
  waddch(dialog, ACS_HLINE);
 wattrset(dialog, dlg.dialog.atr);
 waddch(dialog, ACS_RTEE);

 print_title(dialog, title, width);

 wattrset(dialog, dlg.dialog.atr);
 print_autowrap(dialog, prompt, width - 2, 1, 3);

 print_buttons(dialog, height, width, 0);

 while (key != 132) {
  key = wgetch(dialog);
  switch (key) {
  case 'Y':
  case 'y':
   delwin(dialog);
   return 0;
  case 'N':
  case 'n':
   delwin(dialog);
   return 1;

  case 128:
  case 131:
  case 129:
   button = ((key == 131 ? --button : ++button) < 0) ? 1 : (button > 1 ? 0 : button);

   print_buttons(dialog, height, width, button);
   wrefresh(dialog);
   break;
  case ' ':
  case '\n':
   delwin(dialog);
   return button;
  case 132:
   key = on_key_esc(dialog);
   break;
  case 130:
   delwin(dialog);
   on_key_resize();
   goto do_resize;
  }
 }

 delwin(dialog);
 return key;
}
