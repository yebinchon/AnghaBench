
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char NUL ;
 int UCH (char) ;
 scalar_t__ isdigit (int ) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
is_reserved(char *name)
{
    char *s;

    if (strcmp(name, ".") == 0 ||
 strcmp(name, "$accept") == 0 ||
 strcmp(name, "$end") == 0)
 return (1);

    if (name[0] == '$' && name[1] == '$' && isdigit(UCH(name[2])))
    {
 s = name + 3;
 while (isdigit(UCH(*s)))
     ++s;
 if (*s == NUL)
     return (1);
    }

    return (0);
}
