
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DLG_EXIT_UNKNOWN ;
 int dlg_flush_getc () ;
 int dlg_last_getc () ;
 scalar_t__ dlg_toupper (int ) ;
 int free (int*) ;
 int* get_hotkeys (char const**) ;

int
dlg_char_to_button(int ch, const char **labels)
{
    int result = DLG_EXIT_UNKNOWN;

    if (labels != 0) {
 int *hotkeys = get_hotkeys(labels);
 int j;

 ch = (int) dlg_toupper(dlg_last_getc());

 if (hotkeys != 0) {
     for (j = 0; labels[j] != 0; ++j) {
  if (ch == hotkeys[j]) {
      dlg_flush_getc();
      result = j;
      break;
  }
     }
     free(hotkeys);
 }
    }

    return result;
}
