
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {int length; int* s; } ;


 int * dyn_string_resize (TYPE_1__*,int) ;

int
dyn_string_append_char (dyn_string_t dest, int c)
{

  if (dyn_string_resize (dest, dest->length + 1) == ((void*)0))
    return 0;

  dest->s[dest->length] = c;

  dest->s[dest->length + 1] = '\0';

  ++(dest->length);
  return 1;
}
