
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ colors; } ;


 scalar_t__ ESCAPE_LEN ;
 TYPE_1__ dialog_vars ;
 int dlg_count_columns (char const*) ;
 scalar_t__ isOurEscape (char const*) ;

int
dlg_count_real_columns(const char *text)
{
    int result = 0;
    if (*text) {
 result = dlg_count_columns(text);
 if (result && dialog_vars.colors) {
     int hidden = 0;
     while (*text) {
  if (dialog_vars.colors && isOurEscape(text)) {
      hidden += ESCAPE_LEN;
      text += ESCAPE_LEN;
  } else {
      ++text;
  }
     }
     result -= hidden;
 }
    }
    return result;
}
