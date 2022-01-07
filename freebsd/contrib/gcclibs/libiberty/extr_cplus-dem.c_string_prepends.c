
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ b; scalar_t__ p; } ;
typedef TYPE_1__ string ;


 int string_prependn (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
string_prepends (string *p, string *s)
{
  if (s->b != s->p)
    {
      string_prependn (p, s->b, s->p - s->b);
    }
}
