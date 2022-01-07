
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strspn ;
typedef int chtype ;
typedef int WINDOW ;
typedef int HOTKEY ;


 int UCH (char) ;
 int button_active_attr ;
 int button_inactive_attr ;
 int button_key_active_attr ;
 int button_key_inactive_attr ;
 int button_label_active_attr ;
 int button_label_inactive_attr ;
 int dlg_attrset (int *,int ) ;
 int dlg_count_wchars (char*) ;
 int* dlg_index_wchars (char*) ;

 int sHAD_KEY ;

 int string_to_char (char const**) ;
 int waddnstr (int *,char*,int) ;
 int waddstr (int *,char*) ;
 int wmove (int *,int,int) ;

__attribute__((used)) static void
print_button(WINDOW *win, char *label, int hotkey, int y, int x, int selected)
{
    int i;
    HOTKEY state = 129;
    const int *indx = dlg_index_wchars(label);
    int limit = dlg_count_wchars(label);
    chtype key_attr = (selected
         ? button_key_active_attr
         : button_key_inactive_attr);
    chtype label_attr = (selected
    ? button_label_active_attr
    : button_label_inactive_attr);

    (void) wmove(win, y, x);
    dlg_attrset(win, selected
  ? button_active_attr
  : button_inactive_attr);
    (void) waddstr(win, "<");
    dlg_attrset(win, label_attr);
    for (i = 0; i < limit; ++i) {
 int check;
 int first = indx[i];
 int last = indx[i + 1];

 switch (state) {
 case 129:
     check = UCH(label[first]);






     if (check == hotkey) {
  dlg_attrset(win, key_attr);
  state = 128;
     }
     break;
 case 128:
     dlg_attrset(win, label_attr);
     state = sHAD_KEY;
     break;
 default:
     break;
 }
 waddnstr(win, label + first, last - first);
    }
    dlg_attrset(win, selected
  ? button_active_attr
  : button_inactive_attr);
    (void) waddstr(win, ">");
    (void) wmove(win, y, x + ((int) (strspn) (label, " ")) + 1);
}
