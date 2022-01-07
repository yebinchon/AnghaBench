
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ strspn ;


 int FALSE ;
 int OptionChars ;
 int TRUE ;
 int UCH (char const) ;
 char const** dialog_opts ;
 int dlg_exiterr (char*,char const*) ;
 int handle_leaks () ;
 scalar_t__ isalpha (int ) ;
 scalar_t__ strlen (char const*) ;
 int strncmp (char const*,char*,size_t) ;

__attribute__((used)) static bool
isOption(const char *arg)
{
    bool result = FALSE;

    if (arg != 0) {
 if (dialog_opts != 0) {
     int n;
     for (n = 0; dialog_opts[n] != 0; ++n) {
  if (dialog_opts[n] == arg) {
      result = TRUE;
      break;
  }
     }
 } else if (!strncmp(arg, "--", (size_t) 2) && isalpha(UCH(arg[2]))) {
     if (strlen(arg) == (strspn) (arg, OptionChars)) {
  result = TRUE;
     } else {
  handle_leaks();
  dlg_exiterr("Invalid option \"%s\"", arg);
     }
 }
    }
    return result;
}
