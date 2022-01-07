
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int obstack; int * heads; int * elements; } ;
typedef TYPE_1__ bitmap_obstack ;


 TYPE_1__ bitmap_default_obstack ;
 int obstack_free (int *,int *) ;

void
bitmap_obstack_release (bitmap_obstack *bit_obstack)
{
  if (!bit_obstack)
    bit_obstack = &bitmap_default_obstack;

  bit_obstack->elements = ((void*)0);
  bit_obstack->heads = ((void*)0);
  obstack_free (&bit_obstack->obstack, ((void*)0));
}
