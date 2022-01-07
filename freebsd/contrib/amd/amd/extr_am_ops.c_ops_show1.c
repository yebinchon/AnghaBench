
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strlen (char const*) ;
 int xstrlcat (char*,char const*,size_t) ;

__attribute__((used)) static void
ops_show1(char *buf, size_t l, int *linesizep, const char *name)
{
  xstrlcat(buf, name, l);
  xstrlcat(buf, ", ", l);
  *linesizep += strlen(name) + 2;
  if (*linesizep > 60) {
    xstrlcat(buf, "\t\n", l);
    *linesizep = 0;
  }
}
