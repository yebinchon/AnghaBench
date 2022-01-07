
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_set_t {size_t n_slots; void** slots; } ;



void pointer_set_traverse (struct pointer_set_t *pset,
      bool (*fn) (void *, void *), void *data)
{
  size_t i;
  for (i = 0; i < pset->n_slots; ++i)
    if (pset->slots[i] && !fn (pset->slots[i], data))
      break;
}
