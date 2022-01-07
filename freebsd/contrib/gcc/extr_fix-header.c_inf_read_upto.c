
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__* ptr; } ;
typedef TYPE_1__ sstring ;


 int EOF ;
 int INF_GET () ;
 int MAKE_SSTRING_SPACE (TYPE_1__*,int) ;
 int SSTRING_PUT (TYPE_1__*,int) ;

__attribute__((used)) static int
inf_read_upto (sstring *str, int delim)
{
  int ch;
  for (;;)
    {
      ch = INF_GET ();
      if (ch == EOF || ch == delim)
 break;
      SSTRING_PUT (str, ch);
    }
  MAKE_SSTRING_SPACE (str, 1);
  *str->ptr = 0;
  return ch;
}
