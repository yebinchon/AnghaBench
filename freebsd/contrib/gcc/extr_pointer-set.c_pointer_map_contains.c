
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_map_t {size_t n_slots; void** keys; void** values; int log_slots; } ;


 size_t hash1 (void*,size_t,int ) ;

void **
pointer_map_contains (struct pointer_map_t *pmap, void *p)
{
  size_t n = hash1 (p, pmap->n_slots, pmap->log_slots);

  while (1)
    {
      if (pmap->keys[n] == p)
 return &pmap->values[n];
      else if (pmap->keys[n] == 0)
 return ((void*)0);
      else
       {
         ++n;
         if (n == pmap->n_slots)
           n = 0;
       }
    }
}
