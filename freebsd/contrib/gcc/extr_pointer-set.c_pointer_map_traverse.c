
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_map_t {size_t n_slots; void** keys; void** values; } ;



void pointer_map_traverse (struct pointer_map_t *pmap,
      bool (*fn) (void *, void **, void *), void *data)
{
  size_t i;
  for (i = 0; i < pmap->n_slots; ++i)
    if (pmap->keys[i] && !fn (pmap->keys[i], &pmap->values[i], data))
      break;
}
