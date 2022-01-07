
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int obstack; TYPE_2__* heads; } ;
typedef TYPE_1__ bitmap_obstack ;
typedef TYPE_2__* bitmap ;
struct TYPE_10__ {scalar_t__ first; } ;


 TYPE_2__* XOBNEW (int *,int ) ;
 TYPE_1__ bitmap_default_obstack ;
 int bitmap_head ;
 int bitmap_initialize (TYPE_2__*,TYPE_1__*) ;

bitmap
bitmap_obstack_alloc (bitmap_obstack *bit_obstack)
{
  bitmap map;

  if (!bit_obstack)
    bit_obstack = &bitmap_default_obstack;
  map = bit_obstack->heads;
  if (map)
    bit_obstack->heads = (void *)map->first;
  else
    map = XOBNEW (&bit_obstack->obstack, bitmap_head);
  bitmap_initialize (map, bit_obstack);

  return map;
}
