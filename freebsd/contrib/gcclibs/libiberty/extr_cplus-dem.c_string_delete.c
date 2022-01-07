
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * p; int * e; int * b; } ;
typedef TYPE_1__ string ;


 int free (int *) ;

__attribute__((used)) static void
string_delete (string *s)
{
  if (s->b != ((void*)0))
    {
      free (s->b);
      s->b = s->e = s->p = ((void*)0);
    }
}
