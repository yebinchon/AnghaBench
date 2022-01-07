
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int nocancel; } ;
struct TYPE_8__ {int win; } ;
struct TYPE_9__ {TYPE_1__ obj; int wide; scalar_t__ high; } ;
typedef TYPE_2__ MY_OBJ ;
typedef int DLG_KEYS_BINDING ;





 int DLG_EXIT_OK ;
 int DLG_EXIT_UNKNOWN ;


 int FALSE ;


 int M_EVENT ;

 void* TRUE ;
 int beep () ;
 int border2_attr ;
 int border_attr ;
 int dialog_attr ;
 TYPE_7__ dialog_vars ;
 int dlg_char_to_button (int,char const**) ;
 int dlg_default_button () ;
 int dlg_draw_bottom_box2 (int ,int ,int ,int ) ;
 int dlg_draw_buttons (int ,scalar_t__,int ,char const**,int,int,int ) ;
 int dlg_mouse_free_regions () ;
 int dlg_mouse_wgetch (int ,int*) ;
 int dlg_next_button (char const**,int) ;
 int dlg_ok_buttoncode (int) ;
 char** dlg_ok_label () ;
 int dlg_prev_button (char const**,int) ;
 int dlg_register_buttons (int ,char*,char const**) ;
 int dlg_register_window (int ,char*,int *) ;
 scalar_t__ dlg_result_key (int,int,int*) ;
 int dlg_unregister_window (int ) ;
 int dlg_will_resize (int ) ;
 int is_DLGK_MOUSE (int) ;
 int reprint_lines (TYPE_2__*,void*) ;
 int restart_obj (TYPE_2__*) ;
 int start_obj (TYPE_2__*,char const*,char const*) ;

__attribute__((used)) static int
pause_for_ok(MY_OBJ * obj, const char *title, const char *cprompt)
{

    static DLG_KEYS_BINDING binding[] = {
 130,
 131,
 128,
 132
    };


    int button;
    int key = 0, fkey;
    int result = DLG_EXIT_UNKNOWN;
    const char **buttons = dlg_ok_label();
    int check;
    bool save_nocancel = dialog_vars.nocancel;
    bool redraw = TRUE;

    dialog_vars.nocancel = TRUE;
    button = dlg_default_button();


  restart:


    dlg_register_window(obj->obj.win, "progressbox", binding);
    dlg_register_buttons(obj->obj.win, "progressbox", buttons);

    dlg_draw_bottom_box2(obj->obj.win, border_attr, border2_attr, dialog_attr);

    while (result == DLG_EXIT_UNKNOWN) {
 if (redraw) {
     redraw = FALSE;
     if (button < 0)
  button = 0;
     dlg_draw_buttons(obj->obj.win,
        obj->high - 2, 0,
        buttons, button,
        FALSE, obj->wide);
 }

 key = dlg_mouse_wgetch(obj->obj.win, &fkey);
 if (dlg_result_key(key, fkey, &result))
     break;

 if (!fkey && (check = dlg_char_to_button(key, buttons)) >= 0) {
     result = dlg_ok_buttoncode(check);
     break;
 }

 if (fkey) {
     switch (key) {
     case 134:
  button = dlg_next_button(buttons, button);
  redraw = TRUE;
  break;
     case 133:
  button = dlg_prev_button(buttons, button);
  redraw = TRUE;
  break;
     case 135:
  result = dlg_ok_buttoncode(button);
  break;

     case 129:
  dlg_will_resize(obj->obj.win);
  restart_obj(obj);
  start_obj(obj, title, cprompt);
  reprint_lines(obj, TRUE);
  redraw = TRUE;
  goto restart;

     default:
  if (is_DLGK_MOUSE(key)) {
      result = dlg_ok_buttoncode(key - M_EVENT);
      if (result < 0)
   result = DLG_EXIT_OK;
  } else {
      beep();
  }
  break;
     }

 } else {
     beep();
 }
    }
    dlg_mouse_free_regions();
    dlg_unregister_window(obj->obj.win);

    dialog_vars.nocancel = save_nocancel;
    return result;
}
