
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (int) ;
 int isalpha (int) ;

__attribute__((used)) static int
is_C_identifier(char *name)
{
    char *s;
    int c;

    s = name;
    c = *s;
    if (c == '"')
    {
 c = *++s;
 if (!isalpha(c) && c != '_' && c != '$')
     return (0);
 while ((c = *++s) != '"')
 {
     if (!isalnum(c) && c != '_' && c != '$')
  return (0);
 }
 return (1);
    }

    if (!isalpha(c) && c != '_' && c != '$')
 return (0);
    while ((c = *++s) != 0)
    {
 if (!isalnum(c) && c != '_' && c != '$')
     return (0);
    }
    return (1);
}
