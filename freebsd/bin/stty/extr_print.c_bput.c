
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LINELENGTH ;
 scalar_t__ col ;
 char* label ;
 scalar_t__ printf (char*,...) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
bput(const char *s)
{

 if (col == 0) {
  col = printf("%s: %s", label, s);
  return;
 }
 if ((col + strlen(s)) > LINELENGTH) {
  (void)printf("\n\t");
  col = printf("%s", s) + 8;
  return;
 }
 col += printf(" %s", s);
}
