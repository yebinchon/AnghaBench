
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ b; scalar_t__ p; } ;
typedef TYPE_1__ string ;


 int memcpy (int,int,int) ;
 int string_need (TYPE_1__*,int) ;

__attribute__((used)) static void
string_appends (string *p, string *s)
{
  int n;

  if (s->b != s->p)
    {
      n = s->p - s->b;
      string_need (p, n);
      memcpy (p->p, s->b, n);
      p->p += n;
    }
}
