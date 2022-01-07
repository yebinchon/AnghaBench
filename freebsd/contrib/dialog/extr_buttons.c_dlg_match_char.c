
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ wint_t ;
typedef scalar_t__ wchar_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ dlg_toupper (int) ;
 int string_to_char (char const**) ;

int
dlg_match_char(int ch, const char *string)
{
    if (string != 0) {
 int cmp2 = string_to_char(&string);






 if (ch > 0 && ch < 256) {
     if (dlg_toupper(ch) == dlg_toupper(cmp2))
  return TRUE;
 }

    }
    return FALSE;
}
