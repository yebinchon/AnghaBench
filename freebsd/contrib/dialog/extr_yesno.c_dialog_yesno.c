
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int DLG_KEYS_BINDING ;





 int DLG_EXIT_OK ;
 int DLG_EXIT_UNKNOWN ;
 int DLG_TRACE (char*) ;
 int DLG_TRACE2N (char*,int) ;
 int DLG_TRACE2S (char*,char const*) ;


 int FALSE ;


 int MARGIN ;
 int M_EVENT ;


 int TRUE ;
 int beep () ;
 int border2_attr ;
 int border_attr ;
 int dialog_attr ;
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
 int dlg_mouse_wgetch (int *,int*) ;
 int dlg_move_window (int *,int,int,int,int) ;
 int * dlg_new_window (int,int,int,int) ;
 int dlg_next_button (char const**,int) ;
 int dlg_ok_buttoncode (int) ;
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
 int dlg_yes_buttoncode (int) ;
 char** dlg_yes_labels () ;
 int free (char*) ;
 int is_DLGK_MOUSE (int) ;

int
dialog_yesno(const char *title, const char *cprompt, int height, int width)
{

    static DLG_KEYS_BINDING binding[] = {
 131,
 132,
 129,
 128,
 133
    };


    int x, y;
    int key = 0, fkey;
    int code;
    int button = dlg_default_button();
    WINDOW *dialog = 0;
    int result = DLG_EXIT_UNKNOWN;
    char *prompt;
    const char **buttons = dlg_yes_labels();
    int min_width = 25;
    bool show = TRUE;
    int page, last = 0, offset = 0;


    int req_high = height;
    int req_wide = width;


    DLG_TRACE(("# yesno args:\n"));
    DLG_TRACE2S("title", title);
    DLG_TRACE2S("message", cprompt);
    DLG_TRACE2N("height", height);
    DLG_TRACE2N("width", width);


  restart:

    prompt = dlg_strclone(cprompt);
    dlg_tab_correct_str(prompt);
    dlg_button_layout(buttons, &min_width);
    dlg_auto_size(title, prompt, &height, &width, 2, min_width);
    dlg_print_size(height, width);
    dlg_ctl_size(height, width);

    x = dlg_box_x_ordinate(width);
    y = dlg_box_y_ordinate(height);


    if (dialog != 0)
 dlg_move_window(dialog, height, width, y, x);
    else

    {
 dialog = dlg_new_window(height, width, y, x);
 dlg_register_window(dialog, "yesno", binding);
 dlg_register_buttons(dialog, "yesno", buttons);
    }

    dlg_draw_box2(dialog, 0, 0, height, width, dialog_attr, border_attr, border2_attr);
    dlg_draw_bottom_box2(dialog, border_attr, border2_attr, dialog_attr);
    dlg_draw_title(dialog, title);
    dlg_draw_helpline(dialog, FALSE);

    dlg_attrset(dialog, dialog_attr);

    page = height - (1 + 3 * MARGIN);
    dlg_draw_buttons(dialog,
       height - 2 * MARGIN, 0,
       buttons, button, FALSE, width);

    while (result == DLG_EXIT_UNKNOWN) {
 if (show) {
     last = dlg_print_scrolled(dialog, prompt, offset,
          page, width, TRUE);
     dlg_trace_win(dialog);
     show = FALSE;
 }
 key = dlg_mouse_wgetch(dialog, &fkey);
 if (dlg_result_key(key, fkey, &result))
     break;
 if ((code = dlg_char_to_button(key, buttons)) >= 0) {
     result = dlg_ok_buttoncode(code);
     break;
 }

 if (fkey) {
     switch (key) {
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
  result = dlg_yes_buttoncode(button);
  break;

     case 130:
  dlg_will_resize(dialog);
  dlg_clear();
  free(prompt);
  height = req_high;
  width = req_wide;
  show = TRUE;
  goto restart;

     default:
  if (is_DLGK_MOUSE(key)) {
      result = dlg_yes_buttoncode(key - M_EVENT);
      if (result < 0)
   result = DLG_EXIT_OK;
  } else if (dlg_check_scrolled(key, last, page,
           &show, &offset) != 0) {
      beep();
  }
  break;
     }
 } else {
     beep();
 }
    }

    dlg_del_window(dialog);
    dlg_mouse_free_regions();
    free(prompt);
    return result;
}
