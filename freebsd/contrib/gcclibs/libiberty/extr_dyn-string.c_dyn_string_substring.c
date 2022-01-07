
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* dyn_string_t ;
struct TYPE_5__ {int length; char* s; } ;


 int abort () ;
 int * dyn_string_resize (TYPE_1__*,int) ;

int
dyn_string_substring (dyn_string_t dest, dyn_string_t src,
                      int start, int end)
{
  int i;
  int length = end - start;

  if (start > end || start > src->length || end > src->length)
    abort ();


  if (dyn_string_resize (dest, length) == ((void*)0))
    return 0;

  for (i = length; --i >= 0; )
    dest->s[i] = src->s[start + i];

  dest->s[length] = '\0';

  dest->length = length;

  return 1;
}
