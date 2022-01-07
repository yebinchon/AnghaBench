
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct output {int dummy; } ;


 int outcslow (char,struct output*) ;
 int outdqstr (char const*,struct output*) ;
 int outstr (char const*,struct output*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strcspn (char const*,char*) ;

void
outqstr(const char *p, struct output *file)
{
 int i;

 if (p[0] == '\0') {
  outstr("''", file);
  return;
 }
 for (i = 0; p[i] != '\0'; i++) {
  if ((p[i] > '\0' && p[i] < ' ' && p[i] != '\n') ||
      (p[i] & 0x80) != 0 || p[i] == '\'') {
   outdqstr(p, file);
   return;
  }
 }

 if (p[strcspn(p, "|&;<>()$`\\\" \n*?[~#=")] == '\0' ||
   strcmp(p, "[") == 0) {
  outstr(p, file);
  return;
 }

 outcslow('\'', file);
 outstr(p, file);
 outcslow('\'', file);
}
