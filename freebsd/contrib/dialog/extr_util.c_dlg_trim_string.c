
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nocollapse; scalar_t__ cr_wrap; scalar_t__ trim_whitespace; int no_nl_expand; } ;


 char TAB ;
 int UCH (char) ;
 TYPE_1__ dialog_vars ;
 scalar_t__ isblank (int ) ;
 scalar_t__ strstr (char*,char*) ;
 int trim_blank (char*,char*) ;

void
dlg_trim_string(char *s)
{
    char *base = s;
    char *p1;
    char *p = s;
    int has_newlines = !dialog_vars.no_nl_expand && (strstr(s, "\\n") != 0);

    while (*p != '\0') {
 if (*p == TAB && !dialog_vars.nocollapse)
     *p = ' ';

 if (has_newlines) {
     if (*p == '\\' && *(p + 1) == 'n') {
  *s++ = '\n';
  p += 2;
  p1 = p;





  while (isblank(UCH(*p1)))
      p1++;
  if (*p1 == '\n')
      p = p1 + 1;
     } else if (*p == '\n') {
  if (dialog_vars.cr_wrap)
      *s++ = *p++;
  else {

      if (!trim_blank(base, p))
   *s++ = ' ';
      p++;
  }
     } else
  *s++ = *p++;
 } else if (dialog_vars.trim_whitespace) {
     if (isblank(UCH(*p))) {
  if (!isblank(UCH(*(s - 1)))) {
      *s++ = ' ';
      p++;
  } else
      p++;
     } else if (*p == '\n') {
  if (dialog_vars.cr_wrap)
      *s++ = *p++;
  else if (!isblank(UCH(*(s - 1)))) {

      *s++ = ' ';
      p++;
  } else
      p++;
     } else
  *s++ = *p++;
 } else {
     if (isblank(UCH(*p)) && !dialog_vars.nocollapse) {
  if (!trim_blank(base, p))
      *s++ = *p;
  p++;
     } else
  *s++ = *p++;
 }
    }

    *s = '\0';
}
