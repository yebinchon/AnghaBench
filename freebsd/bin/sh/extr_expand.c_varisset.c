
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** p; long nparam; } ;


 char* arg0 ;
 int backgndpidset () ;
 scalar_t__ errno ;
 scalar_t__ is_digit (char const) ;
 TYPE_1__ shellparam ;
 long strtol (char const*,int *,int) ;

__attribute__((used)) static int
varisset(const char *name, int nulok)
{

 if (*name == '!')
  return backgndpidset();
 else if (*name == '@' || *name == '*') {
  if (*shellparam.p == ((void*)0))
   return 0;

  if (nulok) {
   char **av;

   for (av = shellparam.p; *av; av++)
    if (**av != '\0')
     return 1;
   return 0;
  }
 } else if (is_digit(*name)) {
  char *ap;
  long num;

  errno = 0;
  num = strtol(name, ((void*)0), 10);
  if (errno != 0 || num > shellparam.nparam)
   return 0;

  if (num == 0)
   ap = arg0;
  else
   ap = shellparam.p[num - 1];

  if (nulok && (ap == ((void*)0) || *ap == '\0'))
   return 0;
 }
 return 1;
}
