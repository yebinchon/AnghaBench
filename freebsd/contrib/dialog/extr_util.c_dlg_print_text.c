
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_4__ {int output; scalar_t__ text_only; } ;
struct TYPE_3__ {scalar_t__ colors; } ;


 int A_ATTRIBUTES ;
 int A_BOLD ;
 int A_COLOR ;
 int A_NORMAL ;
 int A_REVERSE ;
 int A_UNDERLINE ;
 short COLOR_BLACK ;
 short COLOR_WHITE ;
 int CharOf (char const) ;
 scalar_t__ ERR ;
 int FALSE ;
 scalar_t__ PAIR_NUMBER (int) ;
 int TAB ;
 int TRUE ;
 int define_color (int *,int) ;
 TYPE_2__ dialog_state ;
 TYPE_1__ dialog_vars ;
 int dlg_color_pair (short,short) ;
 int fputc (char,int ) ;
 int getyx (int *,int,int) ;
 scalar_t__ isOurEscape (char const*) ;
 int is_combining (char const*,int*) ;
 scalar_t__ pair_content (short,short*,short*) ;
 int waddch (int *,int) ;

void
dlg_print_text(WINDOW *win, const char *txt, int cols, chtype *attr)
{
    int y_origin, x_origin;
    int y_before, x_before = 0;
    int y_after, x_after;
    int tabbed = 0;
    bool thisTab;
    bool ended = FALSE;
    chtype useattr;




    if (dialog_state.text_only) {
 y_origin = y_after = 0;
 x_origin = x_after = 0;
    } else {
 getyx(win, y_origin, x_origin);
    }
    while (cols > 0 && (*txt != '\0')) {
 if (dialog_vars.colors) {
     while (isOurEscape(txt)) {
  int code;

  txt += 2;
  switch (code = CharOf(*txt)) {
  case 'B':
      *attr &= ~A_BOLD;
      break;
  case 'b':
      *attr |= A_BOLD;
      break;
  case 'R':
      *attr &= ~A_REVERSE;
      break;
  case 'r':
      *attr |= A_REVERSE;
      break;
  case 'U':
      *attr &= ~A_UNDERLINE;
      break;
  case 'u':
      *attr |= A_UNDERLINE;
      break;
  case 'n':
      *attr = A_NORMAL;
      break;
  }
  ++txt;
     }
 }
 if (ended || *txt == '\n' || *txt == '\0')
     break;
 useattr = (*attr) & A_ATTRIBUTES;
 thisTab = (CharOf(*txt) == TAB);
 if (dialog_state.text_only) {
     y_before = y_after;
     x_before = x_after;
 } else {
     if (thisTab) {
  getyx(win, y_before, x_before);
  (void) y_before;
     }
 }
 if (dialog_state.text_only) {
     int ch = CharOf(*txt++);
     if (thisTab) {
  while ((x_after++) % 8) {
      fputc(' ', dialog_state.output);
  }
     } else {
  fputc(ch, dialog_state.output);
  x_after++;
     }
 } else {
     (void) waddch(win, CharOf(*txt++) | useattr);
     getyx(win, y_after, x_after);
 }
 if (thisTab && (y_after == y_origin))
     tabbed += (x_after - x_before);
 if ((y_after != y_origin) ||
     (x_after >= (cols + tabbed + x_origin)



     )) {
     ended = TRUE;
 }
    }
    if (dialog_state.text_only) {
 fputc('\n', dialog_state.output);
    }
}
