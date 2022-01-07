
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int units; void* free; } ;
typedef int slobidx_t ;
typedef void slob_t ;


 scalar_t__ ALIGN (unsigned long,int) ;
 int SLOB_UNITS (size_t) ;
 int clear_slob_page_free (struct slob_page*) ;
 int set_slob (void*,int,void*) ;
 scalar_t__ slob_last (void*) ;
 void* slob_next (void*) ;
 int slob_units (void*) ;

__attribute__((used)) static void *slob_page_alloc(struct slob_page *sp, size_t size, int align)
{
 slob_t *prev, *cur, *aligned = ((void*)0);
 int delta = 0, units = SLOB_UNITS(size);

 for (prev = ((void*)0), cur = sp->free; ; prev = cur, cur = slob_next(cur)) {
  slobidx_t avail = slob_units(cur);

  if (align) {
   aligned = (slob_t *)ALIGN((unsigned long)cur, align);
   delta = aligned - cur;
  }
  if (avail >= units + delta) {
   slob_t *next;

   if (delta) {
    next = slob_next(cur);
    set_slob(aligned, avail - delta, next);
    set_slob(cur, delta, aligned);
    prev = cur;
    cur = aligned;
    avail = slob_units(cur);
   }

   next = slob_next(cur);
   if (avail == units) {
    if (prev)
     set_slob(prev, slob_units(prev), next);
    else
     sp->free = next;
   } else {
    if (prev)
     set_slob(prev, slob_units(prev), cur + units);
    else
     sp->free = cur + units;
    set_slob(cur + units, avail - units, next);
   }

   sp->units -= units;
   if (!sp->units)
    clear_slob_page_free(sp);
   return cur;
  }
  if (slob_last(cur))
   return ((void*)0);
 }
}
