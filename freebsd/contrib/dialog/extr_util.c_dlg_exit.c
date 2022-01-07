
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int table ;
struct TYPE_2__ {scalar_t__ input; scalar_t__ pipe_input; } ;
 int FALSE ;
 int TRUE ;
 int _dlg_inputstr_leaks () ;
 int _exit (int) ;
 int _nc_free_and_exit (int) ;
 TYPE_1__ dialog_state ;
 int dlg_trace (char const*) ;
 int exit (int) ;
 int fclose (scalar_t__) ;
 char* getenv (char const*) ;
 scalar_t__ stdin ;
 long strtol (char*,char**,int ) ;

void
dlg_exit(int code)
{

    static const struct {
 int code;
 const char *name;
    } table[] = {
 { 134, "DIALOG_CANCEL" },
 { 133, "DIALOG_ERROR" },
 { 132, "DIALOG_ESC" },
 { 131, "DIALOG_EXTRA" },
 { 130, "DIALOG_HELP" },
 { 128, "DIALOG_OK" },
 { 129, "DIALOG_ITEM_HELP" },
    };


    unsigned n;
    char *name;
    char *temp;
    long value;
    bool overridden = FALSE;

  retry:
    for (n = 0; n < sizeof(table) / sizeof(table[0]); n++) {
 if (table[n].code == code) {
     if ((name = getenv(table[n].name)) != 0) {
  value = strtol(name, &temp, 0);
  if (temp != 0 && temp != name && *temp == '\0') {
      code = (int) value;
      overridden = TRUE;
  }
     }
     break;
 }
    }






    if (code == 129 && !overridden) {
 code = 130;
 goto retry;
    }
    if (dialog_state.input == stdin) {
 exit(code);
    } else {




 if (dialog_state.input) {
     fclose(dialog_state.input);
     dialog_state.input = 0;
 }
 if (dialog_state.pipe_input) {
     if (dialog_state.pipe_input != stdin) {
  fclose(dialog_state.pipe_input);
  dialog_state.pipe_input = 0;
     }
 }
 _exit(code);
    }
}
