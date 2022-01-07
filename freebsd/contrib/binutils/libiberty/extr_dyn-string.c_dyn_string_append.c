
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_5__ {scalar_t__ length; scalar_t__ s; } ;


 scalar_t__ dyn_string_resize (TYPE_1__*,scalar_t__) ;
 int strcpy (scalar_t__,scalar_t__) ;

int
dyn_string_append (dyn_string_t dest, dyn_string_t s)
{
  if (dyn_string_resize (dest, dest->length + s->length) == 0)
    return 0;
  strcpy (dest->s + dest->length, s->s);
  dest->length += s->length;
  return 1;
}
