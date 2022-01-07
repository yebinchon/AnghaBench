
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trans {int val; int str; } ;


 int strlen (int ) ;
 int strncasecmp (int ,char const*,int) ;

__attribute__((used)) static int
trans(const struct trans t[], const char *arg)
{
  int f;

  for (f = 0; t[f].val != -1; f++)
    if (!strncasecmp(t[f].str, arg, 3) ||
        !strncasecmp(t[f].str, arg, strlen(t[f].str)))
      return t[f].val;

  return -1;
}
