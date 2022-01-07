
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slob_page {int units; void* free; } ;
typedef int slobidx_t ;
typedef void slob_t ;


 int BUG_ON (int) ;
 unsigned long PAGE_MASK ;
 int PAGE_SIZE ;
 int SLOB_UNITS (int) ;
 int ZERO_OR_NULL_PTR (void*) ;
 int clear_slob_page (struct slob_page*) ;
 int clear_slob_page_free (struct slob_page*) ;
 int free_slob_page (struct slob_page*) ;
 int free_slob_small ;
 int set_slob (void*,int,void*) ;
 int set_slob_page_free (struct slob_page*,int *) ;
 int slob_free_pages (void*,int ) ;
 int slob_last (void*) ;
 int slob_lock ;
 void* slob_next (void*) ;
 struct slob_page* slob_page (void*) ;
 scalar_t__ slob_page_free (struct slob_page*) ;
 int slob_units (void*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static void slob_free(void *block, int size)
{
 struct slob_page *sp;
 slob_t *prev, *next, *b = (slob_t *)block;
 slobidx_t units;
 unsigned long flags;

 if (unlikely(ZERO_OR_NULL_PTR(block)))
  return;
 BUG_ON(!size);

 sp = slob_page(block);
 units = SLOB_UNITS(size);

 spin_lock_irqsave(&slob_lock, flags);

 if (sp->units + units == SLOB_UNITS(PAGE_SIZE)) {

  if (slob_page_free(sp))
   clear_slob_page_free(sp);
  spin_unlock_irqrestore(&slob_lock, flags);
  clear_slob_page(sp);
  free_slob_page(sp);
  slob_free_pages(b, 0);
  return;
 }

 if (!slob_page_free(sp)) {

  sp->units = units;
  sp->free = b;
  set_slob(b, units,
   (void *)((unsigned long)(b +
     SLOB_UNITS(PAGE_SIZE)) & PAGE_MASK));
  set_slob_page_free(sp, &free_slob_small);
  goto out;
 }





 sp->units += units;

 if (b < sp->free) {
  if (b + units == sp->free) {
   units += slob_units(sp->free);
   sp->free = slob_next(sp->free);
  }
  set_slob(b, units, sp->free);
  sp->free = b;
 } else {
  prev = sp->free;
  next = slob_next(prev);
  while (b > next) {
   prev = next;
   next = slob_next(prev);
  }

  if (!slob_last(prev) && b + units == next) {
   units += slob_units(next);
   set_slob(b, units, slob_next(next));
  } else
   set_slob(b, units, next);

  if (prev + slob_units(prev) == b) {
   units = slob_units(b) + slob_units(prev);
   set_slob(prev, units, slob_next(b));
  } else
   set_slob(prev, slob_units(prev), b);
 }
out:
 spin_unlock_irqrestore(&slob_lock, flags);
}
