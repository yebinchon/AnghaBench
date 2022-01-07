
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int chtype ;
typedef int WINDOW ;
struct TYPE_2__ {int timeout_secs; } ;
typedef int DLG_KEYS_BINDING ;


 int A_REVERSE ;
 int BTN_HIGH ;



 int DLG_EXIT_OK ;
 int DLG_EXIT_UNKNOWN ;
 int DLG_TRACE (char*) ;
 int DLG_TRACE2N (char*,int) ;
 int DLG_TRACE2S (char*,char const*) ;



 int FALSE ;


 int MARGIN ;
 scalar_t__ MIN_HIGH ;
 int MIN_WIDE ;
 scalar_t__ MY_TIMEOUT ;
 int M_EVENT ;

 int TRUE ;
 int border2_attr ;
 int border_attr ;
 int curs_set (int) ;
 int dialog_attr ;
 TYPE_1__ dialog_vars ;
 int dlg_attroff (int *,int) ;
 int dlg_attrset (int *,int) ;
 int dlg_auto_size (char const*,char*,int*,int*,scalar_t__,int ) ;
 int dlg_box_x_ordinate (int) ;
 int dlg_box_y_ordinate (int) ;
 scalar_t__ dlg_button_count (char const**) ;
 int dlg_button_layout (char const**,int*) ;
 int dlg_clear () ;
 int dlg_ctl_size (int,int) ;
 int dlg_default_button () ;
 int dlg_del_window (int *) ;
 int dlg_draw_bottom_box2 (int *,int ,int ,int) ;
 int dlg_draw_box2 (int *,int,int,int,int,int,int ,int ) ;
 int dlg_draw_buttons (int *,int,int ,char const**,int,int,int) ;
 int dlg_draw_helpline (int *,int) ;
 int dlg_draw_title (int *,char const*) ;
 int dlg_enter_buttoncode (int) ;
 int dlg_mouse_free_regions () ;
 int dlg_mouse_setbase (int,int) ;
 int dlg_mouse_wgetch_nowait (int *,int*) ;
 int * dlg_new_window (int,int,int,int) ;
 int dlg_next_button (char const**,int) ;
 int dlg_ok_buttoncode (int ) ;
 char** dlg_ok_labels () ;
 int dlg_prev_button (char const**,int) ;
 int dlg_print_autowrap (int *,char*,int,int) ;
 int dlg_print_size (int,int) ;
 int dlg_register_buttons (int *,char*,char const**) ;
 int dlg_register_window (int *,char*,int *) ;
 scalar_t__ dlg_result_key (int,int,int*) ;
 char* dlg_strclone (char const*) ;
 int dlg_tab_correct_str (char*) ;
 int dlg_trace_win (int *) ;
 int dlg_will_resize (int *) ;
 int free (char*) ;
 int is_DLGK_MOUSE (int) ;
 int mouse_mkbutton (int,int,int,char) ;
 int napms (scalar_t__) ;
 int nodelay (int *,int) ;
 int refresh () ;
 int title_attr ;
 int waddch (int *,int) ;
 int werase (int *) ;
 int winch (int *) ;
 int wmove (int *,int,int) ;
 int wprintw (int *,char*,int) ;
 int wrefresh (int *) ;

int
dialog_pause(const char *title,
      const char *cprompt,
      int height,
      int width,
      int seconds)
{

    static DLG_KEYS_BINDING binding[] = {
 130,
 132,
 128,
 133
    };



    int old_height = height;
    int old_width = width;


    int i, x, y, step;
    int button = dlg_default_button();
    int seconds_orig;
    WINDOW *dialog;
    const char **buttons = dlg_ok_labels();
    bool have_buttons = (dlg_button_count(buttons) != 0);
    bool first;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    int button_high = (have_buttons ? BTN_HIGH : MARGIN);
    int gauge_y;
    char *prompt;
    int save_timeout = dialog_vars.timeout_secs;

    DLG_TRACE(("# pause args:\n"));
    DLG_TRACE2S("title", title);
    DLG_TRACE2S("message", cprompt);
    DLG_TRACE2N("height", height);
    DLG_TRACE2N("width", width);
    DLG_TRACE2N("seconds", seconds);

    curs_set(0);

    dialog_vars.timeout_secs = 0;
    seconds_orig = (seconds > 0) ? seconds : 1;


  retry:


    prompt = dlg_strclone(cprompt);
    dlg_tab_correct_str(prompt);

    if (have_buttons) {
 dlg_auto_size(title, prompt, &height, &width,
        MIN_HIGH,
        MIN_WIDE);
 dlg_button_layout(buttons, &width);
    } else {
 dlg_auto_size(title, prompt, &height, &width,
        MIN_HIGH + MARGIN - BTN_HIGH,
        MIN_WIDE);
    }
    gauge_y = height - button_high - (1 + 2 * MARGIN);
    dlg_print_size(height, width);
    dlg_ctl_size(height, width);


    x = dlg_box_x_ordinate(width);
    y = dlg_box_y_ordinate(height);

    dialog = dlg_new_window(height, width, y, x);
    dlg_register_window(dialog, "pause", binding);
    dlg_register_buttons(dialog, "pause", buttons);

    dlg_mouse_setbase(x, y);
    nodelay(dialog, TRUE);

    first = TRUE;
    do {
 (void) werase(dialog);
 dlg_draw_box2(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);

 dlg_draw_title(dialog, title);
 dlg_draw_helpline(dialog, FALSE);

 dlg_attrset(dialog, dialog_attr);
 dlg_print_autowrap(dialog, prompt, height, width);

 dlg_draw_box2(dialog,
        gauge_y, 2 + MARGIN,
        2 + MARGIN, width - 2 * (2 + MARGIN),
        dialog_attr,
        border_attr,
        border2_attr);






 (void) wmove(dialog, gauge_y + MARGIN, 4);
 dlg_attrset(dialog, title_attr);

 for (i = 0; i < (width - 2 * (3 + MARGIN)); i++)
     (void) waddch(dialog, ' ');

 (void) wmove(dialog, gauge_y + MARGIN, (width / 2) - 2);
 (void) wprintw(dialog, "%3d", seconds);






 x = (seconds * (width - 2 * (3 + MARGIN))) / seconds_orig;
 if ((title_attr & A_REVERSE) != 0) {
     dlg_attroff(dialog, A_REVERSE);
 } else {
     dlg_attrset(dialog, A_REVERSE);
 }
 (void) wmove(dialog, gauge_y + MARGIN, 4);
 for (i = 0; i < x; i++) {
     chtype ch = winch(dialog);
     if (title_attr & A_REVERSE) {
  ch &= ~A_REVERSE;
     }
     (void) waddch(dialog, ch);
 }

 mouse_mkbutton(height - 2, width / 2 - 4, 6, '\n');
 if (have_buttons) {
     dlg_draw_bottom_box2(dialog, border_attr, border2_attr, dialog_attr);
     dlg_draw_buttons(dialog, height - 2, 0, buttons, button, FALSE, width);
 }
 if (first) {
     (void) wrefresh(dialog);
     dlg_trace_win(dialog);
     first = FALSE;
 }

 for (step = 0;
      (result == DLG_EXIT_UNKNOWN) && (step < 1000);
      step += MY_TIMEOUT) {

     napms(MY_TIMEOUT);
     key = dlg_mouse_wgetch_nowait(dialog, &fkey);
     if (key == 131) {
  ;
     } else {
  if (dlg_result_key(key, fkey, &result))
      break;
     }

     switch (key) {

     case 129:
  dlg_will_resize(dialog);
  dlg_clear();
  dlg_del_window(dialog);
  height = old_height;
  width = old_width;
  free(prompt);
  refresh();
  goto retry;

     case 135:
  button = dlg_next_button(buttons, button);
  if (button < 0)
      button = 0;
  dlg_draw_buttons(dialog,
     height - 2, 0,
     buttons, button,
     FALSE, width);
  break;
     case 134:
  button = dlg_prev_button(buttons, button);
  if (button < 0)
      button = 0;
  dlg_draw_buttons(dialog,
     height - 2, 0,
     buttons, button,
     FALSE, width);
  break;
     case 136:
  result = dlg_enter_buttoncode(button);
  break;
     case 131:
  break;
     default:
  if (is_DLGK_MOUSE(key)) {
      result = dlg_ok_buttoncode(key - M_EVENT);
      if (result < 0)
   result = DLG_EXIT_OK;
  }
  break;
     }
 }
    } while ((result == DLG_EXIT_UNKNOWN) && (seconds-- > 0));

    curs_set(1);
    dlg_mouse_free_regions();
    dlg_del_window(dialog);
    free(prompt);

    dialog_vars.timeout_secs = save_timeout;

    return ((result == DLG_EXIT_UNKNOWN) ? DLG_EXIT_OK : result);
}
