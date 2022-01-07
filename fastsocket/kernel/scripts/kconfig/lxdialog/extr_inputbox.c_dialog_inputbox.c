
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_7__ {int atr; } ;
struct TYPE_6__ {int atr; } ;
struct TYPE_5__ {int atr; } ;
struct TYPE_8__ {TYPE_3__ inputbox; TYPE_2__ border; TYPE_1__ dialog; } ;


 int ACS_HLINE ;
 char ACS_LTEE ;
 int ACS_RTEE ;
 int COLS ;
 int ERRDISPLAYTOOSMALL ;







 int LINES ;
 int MAX_LEN ;

 int TRUE ;
 int delwin (int *) ;
 char* dialog_input_result ;
 TYPE_4__ dlg ;
 int draw_box (int *,int,int,int,int,int ,int ) ;
 int draw_shadow (int ,int,int,int,int) ;
 int flash () ;
 int getmaxx (int ) ;
 int getmaxy (int ) ;
 int getyx (int *,int,int) ;
 int isprint (int) ;
 int keypad (int *,int ) ;
 int mvwaddch (int *,int,int,char) ;
 int * newwin (int,int,int,int) ;
 int on_key_esc (int *) ;
 int on_key_resize () ;
 int print_autowrap (int *,char const*,int,int,int) ;
 int print_buttons (int *,int,int,int) ;
 int print_title (int *,char const*,int) ;
 int stdscr ;
 int strcpy (char*,char const*) ;
 int strlen (char*) ;
 int waddch (int *,int) ;
 int waddstr (int *,char*) ;
 int wattrset (int *,int ) ;
 int wgetch (int *) ;
 int wmove (int *,int,int) ;
 int wrefresh (int *) ;

int dialog_inputbox(const char *title, const char *prompt, int height, int width,
                    const char *init)
{
 int i, x, y, box_y, box_x, box_width;
 int input_x = 0, scroll = 0, key = 0, button = -1;
 char *instr = dialog_input_result;
 WINDOW *dialog;

 if (!init)
  instr[0] = '\0';
 else
  strcpy(instr, init);

do_resize:
 if (getmaxy(stdscr) <= (height - 2))
  return -ERRDISPLAYTOOSMALL;
 if (getmaxx(stdscr) <= (width - 2))
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


 box_width = width - 6;
 getyx(dialog, y, x);
 box_y = y + 2;
 box_x = (width - box_width) / 2;
 draw_box(dialog, y + 1, box_x - 1, 3, box_width + 2,
   dlg.dialog.atr, dlg.border.atr);

 print_buttons(dialog, height, width, 0);


 wmove(dialog, box_y, box_x);
 wattrset(dialog, dlg.inputbox.atr);

 input_x = strlen(instr);

 if (input_x >= box_width) {
  scroll = input_x - box_width + 1;
  input_x = box_width - 1;
  for (i = 0; i < box_width - 1; i++)
   waddch(dialog, instr[scroll + i]);
 } else {
  waddstr(dialog, instr);
 }

 wmove(dialog, box_y, box_x + input_x);

 wrefresh(dialog);

 while (key != 133) {
  key = wgetch(dialog);

  if (button == -1) {
   switch (key) {
   case 128:
   case 129:
   case 134:
    break;
   case 132:
    continue;
   case 130:
    continue;
   case 135:
   case 127:
    if (input_x || scroll) {
     wattrset(dialog, dlg.inputbox.atr);
     if (!input_x) {
      scroll = scroll < box_width - 1 ? 0 : scroll - (box_width - 1);
      wmove(dialog, box_y, box_x);
      for (i = 0; i < box_width; i++)
       waddch(dialog,
              instr[scroll + input_x + i] ?
              instr[scroll + input_x + i] : ' ');
      input_x = strlen(instr) - scroll;
     } else
      input_x--;
     instr[scroll + input_x] = '\0';
     mvwaddch(dialog, box_y, input_x + box_x, ' ');
     wmove(dialog, box_y, input_x + box_x);
     wrefresh(dialog);
    }
    continue;
   default:
    if (key < 0x100 && isprint(key)) {
     if (scroll + input_x < MAX_LEN) {
      wattrset(dialog, dlg.inputbox.atr);
      instr[scroll + input_x] = key;
      instr[scroll + input_x + 1] = '\0';
      if (input_x == box_width - 1) {
       scroll++;
       wmove(dialog, box_y, box_x);
       for (i = 0; i < box_width - 1; i++)
        waddch(dialog, instr [scroll + i]);
      } else {
       wmove(dialog, box_y, input_x++ + box_x);
       waddch(dialog, key);
      }
      wrefresh(dialog);
     } else
      flash();
     continue;
    }
   }
  }
  switch (key) {
  case 'O':
  case 'o':
   delwin(dialog);
   return 0;
  case 'H':
  case 'h':
   delwin(dialog);
   return 1;
  case 129:
  case 132:
   switch (button) {
   case -1:
    button = 1;
    print_buttons(dialog, height, width, 1);
    break;
   case 0:
    button = -1;
    print_buttons(dialog, height, width, 0);
    wmove(dialog, box_y, box_x + input_x);
    wrefresh(dialog);
    break;
   case 1:
    button = 0;
    print_buttons(dialog, height, width, 0);
    break;
   }
   break;
  case 128:
  case 134:
  case 130:
   switch (button) {
   case -1:
    button = 0;
    print_buttons(dialog, height, width, 0);
    break;
   case 0:
    button = 1;
    print_buttons(dialog, height, width, 1);
    break;
   case 1:
    button = -1;
    print_buttons(dialog, height, width, 0);
    wmove(dialog, box_y, box_x + input_x);
    wrefresh(dialog);
    break;
   }
   break;
  case ' ':
  case '\n':
   delwin(dialog);
   return (button == -1 ? 0 : button);
  case 'X':
  case 'x':
   key = 133;
   break;
  case 133:
   key = on_key_esc(dialog);
   break;
  case 131:
   delwin(dialog);
   on_key_resize();
   goto do_resize;
  }
 }

 delwin(dialog);
 return 133;
}
