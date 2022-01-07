
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_5__ {int length; int * s; } ;


 int abort () ;
 int * dyn_string_resize (TYPE_1__*,int) ;
 int strncpy (int *,int *,int) ;

int
dyn_string_insert (dyn_string_t dest, int pos, dyn_string_t src)
{
  int i;

  if (src == dest)
    abort ();

  if (dyn_string_resize (dest, dest->length + src->length) == ((void*)0))
    return 0;

  for (i = dest->length; i >= pos; --i)
    dest->s[i + src->length] = dest->s[i];

  strncpy (dest->s + pos, src->s, src->length);

  dest->length += src->length;
  return 1;
}
