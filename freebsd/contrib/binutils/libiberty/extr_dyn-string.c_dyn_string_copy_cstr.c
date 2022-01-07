
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {int length; int s; } ;


 int * dyn_string_resize (TYPE_1__*,int) ;
 int strcpy (int ,char const*) ;
 int strlen (char const*) ;

int
dyn_string_copy_cstr (dyn_string_t dest, const char *src)
{
  int length = strlen (src);

  if (dyn_string_resize (dest, length) == ((void*)0))
    return 0;

  strcpy (dest->s, src);

  dest->length = length;
  return 1;
}
