
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* ptr; } ;
typedef TYPE_1__ sstring ;
typedef int FILE ;


 int EOF ;
 int MAKE_SSTRING_SPACE (TYPE_1__*,int) ;
 int SSTRING_PUT (TYPE_1__*,int) ;
 int getc (int *) ;

int
scan_string (FILE *fp, sstring *s, int init)
{
  int c;

  for (;;)
    {
      c = getc (fp);
      if (c == EOF || c == '\n')
 break;
      if (c == init)
 {
   c = getc (fp);
   break;
 }
      if (c == '\\')
 {
   c = getc (fp);
   if (c == EOF)
     break;
   if (c == '\n')
     continue;
 }
      SSTRING_PUT (s, c);
    }
  MAKE_SSTRING_SPACE (s, 1);
  *s->ptr = 0;
  return c;
}
