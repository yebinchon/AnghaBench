
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 char* cptr ;
 int get_line () ;
 int * line ;
 int skip_comment () ;

__attribute__((used)) static int
next_inline(void)
{
    char *s;

    if (line == ((void*)0))
    {
 get_line();
 if (line == ((void*)0))
     return (EOF);
    }

    s = cptr;
    for (;;)
    {
 switch (*s)
 {
 case '/':
     if (s[1] == '*')
     {
  cptr = s;
  skip_comment();
  s = cptr;
  break;
     }
     else if (s[1] == '/')
     {
  get_line();
  if (line == ((void*)0))
      return (EOF);
  s = cptr;
  break;
     }


 default:
     cptr = s;
     return (*s);
 }
    }
}
