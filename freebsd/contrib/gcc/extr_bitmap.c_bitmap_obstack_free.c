
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* bitmap ;
struct TYPE_6__ {TYPE_1__* obstack; void* first; } ;
struct TYPE_5__ {TYPE_2__* heads; } ;


 int bitmap_clear (TYPE_2__*) ;

void
bitmap_obstack_free (bitmap map)
{
  if (map)
    {
      bitmap_clear (map);
      map->first = (void *)map->obstack->heads;
      map->obstack->heads = map;
    }
}
