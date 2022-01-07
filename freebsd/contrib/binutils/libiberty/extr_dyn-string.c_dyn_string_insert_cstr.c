
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_4__ {int length; int * s; } ;


 int * dyn_string_resize (TYPE_1__*,int) ;
 int strlen (char const*) ;
 int strncpy (int *,char const*,int) ;

int
dyn_string_insert_cstr (dyn_string_t dest, int pos, const char *src)
{
  int i;
  int length = strlen (src);

  if (dyn_string_resize (dest, dest->length + length) == ((void*)0))
    return 0;

  for (i = dest->length; i >= pos; --i)
    dest->s[i + length] = dest->s[i];

  strncpy (dest->s + pos, src, length);

  dest->length += length;
  return 1;
}
