
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* ptr; scalar_t__* base; } ;
typedef TYPE_1__ sstring ;
typedef int FILE ;


 int EOF ;
 int ISIDNUM (int) ;
 scalar_t__ ISIDST (int) ;
 int MAKE_SSTRING_SPACE (TYPE_1__*,int) ;
 int SSTRING_PUT (TYPE_1__*,int) ;
 int getc (int *) ;

int
scan_ident (FILE *fp, sstring *s, int c)
{
  s->ptr = s->base;
  if (ISIDST (c))
    {
      for (;;)
 {
   SSTRING_PUT (s, c);
   c = getc (fp);
   if (c == EOF || ! ISIDNUM (c))
     break;
 }
    }
  MAKE_SSTRING_SPACE (s, 1);
  *s->ptr = 0;
  return c;
}
