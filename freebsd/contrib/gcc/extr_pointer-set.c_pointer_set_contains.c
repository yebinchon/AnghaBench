
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pointer_set_t {size_t n_slots; void** slots; int log_slots; } ;


 size_t hash1 (void*,size_t,int ) ;

int
pointer_set_contains (struct pointer_set_t *pset, void *p)
{
  size_t n = hash1 (p, pset->n_slots, pset->log_slots);

  while (1)
    {
      if (pset->slots[n] == p)
       return 1;
      else if (pset->slots[n] == 0)
       return 0;
      else
       {
         ++n;
         if (n == pset->n_slots)
           n = 0;
       }
    }
}
