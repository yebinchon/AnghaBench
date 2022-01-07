
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
read_upto (FILE *fp, sstring *str, int delim)
{
  int ch;

  for (;;)
    {
      ch = getc (fp);
      if (ch == EOF || ch == delim)
 break;
      SSTRING_PUT (str, ch);
    }
  MAKE_SSTRING_SPACE (str, 1);
  *str->ptr = 0;
  return ch;
}
