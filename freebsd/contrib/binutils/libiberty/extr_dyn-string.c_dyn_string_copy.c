
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_5__ {int length; int s; } ;


 int abort () ;
 int * dyn_string_resize (TYPE_1__*,int ) ;
 int strcpy (int ,int ) ;

int
dyn_string_copy (dyn_string_t dest, dyn_string_t src)
{
  if (dest == src)
    abort ();


  if (dyn_string_resize (dest, src->length) == ((void*)0))
    return 0;

  strcpy (dest->s, src->s);

  dest->length = src->length;
  return 1;
}
