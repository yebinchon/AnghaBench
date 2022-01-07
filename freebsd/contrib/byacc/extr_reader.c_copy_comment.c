
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mstring {int dummy; } ;
struct ainfo {int a_line; int a_cptr; int a_lineno; } ;


 int FREE (int) ;
 char* cptr ;
 int dup_line () ;
 int get_line () ;
 char* line ;
 int lineno ;
 int mputc (struct mstring*,char) ;
 char* msdone (struct mstring*) ;
 struct mstring* msnew () ;
 int unterminated_comment (struct ainfo*) ;

__attribute__((used)) static char *
copy_comment(void)
{
    struct mstring *temp = msnew();
    int c;

    c = *cptr;
    if (c == '/')
    {
 mputc(temp, '*');
 while ((c = *++cptr) != '\n')
 {
     mputc(temp, c);
     if (c == '*' && cptr[1] == '/')
  mputc(temp, ' ');
 }
 mputc(temp, '*');
 mputc(temp, '/');
    }
    else if (c == '*')
    {
 struct ainfo a;
 a.a_lineno = lineno;
 a.a_line = dup_line();
 a.a_cptr = a.a_line + (cptr - line - 1);

 mputc(temp, c);
 ++cptr;
 for (;;)
 {
     c = *cptr++;
     mputc(temp, c);
     if (c == '*' && *cptr == '/')
     {
  mputc(temp, '/');
  ++cptr;
  FREE(a.a_line);
  return msdone(temp);
     }
     if (c == '\n')
     {
  get_line();
  if (line == ((void*)0))
      unterminated_comment(&a);
     }
 }
    }
    return msdone(temp);
}
