
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {scalar_t__ length; scalar_t__ s; } ;


 int * dyn_string_resize (TYPE_1__*,scalar_t__) ;
 int strcpy (scalar_t__,char const*) ;
 int strlen (char const*) ;

int
dyn_string_append_cstr (dyn_string_t dest, const char *s)
{
  int len = strlen (s);



  if (dyn_string_resize (dest, dest->length + len) == ((void*)0))
    return 0;
  strcpy (dest->s + dest->length, s);
  dest->length += len;
  return 1;
}
