
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ainfo {int a_line; int a_cptr; int a_lineno; } ;


 int FREE (int) ;
 char* cptr ;
 int dup_line () ;
 int get_line () ;
 char* line ;
 int lineno ;
 int unterminated_comment (struct ainfo*) ;

__attribute__((used)) static void
skip_comment(void)
{
    char *s;
    struct ainfo a;
    a.a_lineno = lineno;
    a.a_line = dup_line();
    a.a_cptr = a.a_line + (cptr - line);

    s = cptr + 2;
    for (;;)
    {
 if (*s == '*' && s[1] == '/')
 {
     cptr = s + 2;
     FREE(a.a_line);
     return;
 }
 if (*s == '\n')
 {
     get_line();
     if (line == ((void*)0))
  unterminated_comment(&a);
     s = cptr;
 }
 else
     ++s;
    }
}
