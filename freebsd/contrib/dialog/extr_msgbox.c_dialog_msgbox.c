
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_2__ {int nocancel; } ;
typedef int DLG_KEYS_BINDING ;





 int DLG_EXIT_OK ;
 int DLG_EXIT_UNKNOWN ;
 int DLG_TRACE (char*) ;
 int DLG_TRACE2N (char*,int) ;
 int DLG_TRACE2S (char*,char const*) ;


 int FALSE ;


 int MARGIN ;
 int M_EVENT ;


 void* TRUE ;
 int beep () ;
 int border2_attr ;
 int border_attr ;
 int dialog_attr ;
 TYPE_1__ dialog_vars ;
 int dlg_attrset (int *,int ) ;
 int dlg_auto_size (char const*,char*,int*,int*,int,int) ;
 int dlg_box_x_ordinate (int) ;
 int dlg_box_y_ordinate (int) ;
 int dlg_button_layout (char const**,int*) ;
 int dlg_char_to_button (int,char const**) ;
 int dlg_check_scrolled (int,int,int,int*,int*) ;
 int dlg_clear () ;
 int dlg_ctl_size (int,int) ;
 int dlg_default_button () ;
 int dlg_del_window (int *) ;
 int dlg_draw_bottom_box2 (int *,int ,int ,int ) ;
 int dlg_draw_box2 (int *,int ,int ,int,int,int ,int ,int ) ;
 int dlg_draw_buttons (int *,int,int ,char const**,int,int,int) ;
 int dlg_draw_helpline (int *,int) ;
 int dlg_draw_title (int *,char const*) ;
 int dlg_mouse_free_regions () ;
 int dlg_mouse_setbase (int,int) ;
 int dlg_mouse_wgetch (int *,int*) ;
 int dlg_move_window (int *,int,int,int,int) ;
 int * dlg_new_window (int,int,int,int) ;
 int dlg_next_button (char const**,int) ;
 int dlg_ok_buttoncode (int) ;
 char** dlg_ok_label () ;
 int dlg_prev_button (char const**,int) ;
 int dlg_print_scrolled (int *,char*,int,int,int,int) ;
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
 int wrefresh (int *) ;

int
dialog_msgbox(const char *title, const char *cprompt, int height, int width,
       int pauseopt)
{

    static DLG_KEYS_BINDING binding[] = {
 131,
 132,
 129,
 128,
 133
    };


    int x, y, last = 0, page;
    int button;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    WINDOW *dialog = 0;
    char *prompt;
    const char **buttons = dlg_ok_label();
    int offset = 0;
    int check;
    bool show = TRUE;
    int min_width = (pauseopt == 1 ? 12 : 0);
    bool save_nocancel = dialog_vars.nocancel;

    int req_high;
    int req_wide;


    DLG_TRACE(("# msgbox args:\n"));
    DLG_TRACE2S("title", title);
    DLG_TRACE2S("message", cprompt);
    DLG_TRACE2N("height", height);
    DLG_TRACE2N("width", width);
    DLG_TRACE2N("pauseopt", pauseopt);

    dialog_vars.nocancel = TRUE;
    button = dlg_default_button();


    req_high = height;
    req_wide = width;
  restart:


    dlg_button_layout(buttons, &min_width);

    prompt = dlg_strclone(cprompt);
    dlg_tab_correct_str(prompt);
    dlg_auto_size(title, prompt, &height, &width,
    (pauseopt == 1 ? 2 : 0),
    min_width);
    dlg_print_size(height, width);
    dlg_ctl_size(height, width);

    x = dlg_box_x_ordinate(width);
    y = dlg_box_y_ordinate(height);


    if (dialog != 0)
 dlg_move_window(dialog, height, width, y, x);
    else

    {
 dialog = dlg_new_window(height, width, y, x);
 dlg_register_window(dialog, "msgbox", binding);
 dlg_register_buttons(dialog, "msgbox", buttons);
    }
    page = height - (1 + 3 * MARGIN);

    dlg_mouse_setbase(x, y);

    dlg_draw_box2(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);
    dlg_draw_title(dialog, title);

    dlg_attrset(dialog, dialog_attr);

    if (pauseopt) {
 dlg_draw_bottom_box2(dialog, border_attr, border2_attr, dialog_attr);
 mouse_mkbutton(height - 2, width / 2 - 4, 6, '\n');
 dlg_draw_buttons(dialog, height - 2, 0, buttons, button, FALSE, width);
 dlg_draw_helpline(dialog, FALSE);

 while (result == DLG_EXIT_UNKNOWN) {
     if (show) {
  last = dlg_print_scrolled(dialog, prompt, offset,
       page, width, pauseopt);
  dlg_trace_win(dialog);
  show = FALSE;
     }
     key = dlg_mouse_wgetch(dialog, &fkey);
     if (dlg_result_key(key, fkey, &result))
  break;

     if (!fkey && (check = dlg_char_to_button(key, buttons)) >= 0) {
  result = dlg_ok_buttoncode(check);
  break;
     }

     if (fkey) {
  switch (key) {

  case 130:
      dlg_will_resize(dialog);
      dlg_clear();
      free(prompt);
      height = req_high;
      width = req_wide;
      show = TRUE;
      goto restart;

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
      result = dlg_ok_buttoncode(button);
      break;
  default:
      if (is_DLGK_MOUSE(key)) {
   result = dlg_ok_buttoncode(key - M_EVENT);
   if (result < 0)
       result = DLG_EXIT_OK;
      } else if (dlg_check_scrolled(key,
        last,
        page,
        &show,
        &offset) == 0) {
      } else {
   beep();
      }
      break;
  }
     } else {
  beep();
     }
 }
    } else {
 dlg_print_scrolled(dialog, prompt, offset, page, width, pauseopt);
 dlg_draw_helpline(dialog, FALSE);
 wrefresh(dialog);
 dlg_trace_win(dialog);
 result = DLG_EXIT_OK;
    }

    dlg_del_window(dialog);
    dlg_mouse_free_regions();
    free(prompt);

    dialog_vars.nocancel = save_nocancel;

    return result;
}
