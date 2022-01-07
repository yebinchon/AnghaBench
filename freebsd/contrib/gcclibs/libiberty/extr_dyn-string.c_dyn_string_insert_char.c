
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {int length; int* s; } ;


 int * dyn_string_resize (TYPE_1__*,int) ;

int
dyn_string_insert_char (dyn_string_t dest, int pos, int c)
{
  int i;

  if (dyn_string_resize (dest, dest->length + 1) == ((void*)0))
    return 0;

  for (i = dest->length; i >= pos; --i)
    dest->s[i + 1] = dest->s[i];

  dest->s[pos] = c;

  ++dest->length;
  return 1;
}
