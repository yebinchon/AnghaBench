
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int lock; int gray_list; int count; } ;


 void* BYTES_PER_POINTER ;
 unsigned long* PTR_ALIGN (void*,void*) ;
 int SINGLE_DEPTH_NESTING ;
 scalar_t__ color_gray (struct kmemleak_object*) ;
 int color_white (struct kmemleak_object*) ;
 int cond_resched () ;
 struct kmemleak_object* find_and_get_object (unsigned long,int) ;
 int gray_list ;
 int kmemcheck_is_obj_initialized (unsigned long,void*) ;
 int list_add_tail (int *,int *) ;
 int put_object (struct kmemleak_object*) ;
 scalar_t__ scan_should_stop () ;
 int spin_lock_irqsave_nested (int *,unsigned long,int ) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void scan_block(void *_start, void *_end,
         struct kmemleak_object *scanned, int allow_resched)
{
 unsigned long *ptr;
 unsigned long *start = PTR_ALIGN(_start, BYTES_PER_POINTER);
 unsigned long *end = _end - (BYTES_PER_POINTER - 1);

 for (ptr = start; ptr < end; ptr++) {
  struct kmemleak_object *object;
  unsigned long flags;
  unsigned long pointer;

  if (allow_resched)
   cond_resched();
  if (scan_should_stop())
   break;


  if (!kmemcheck_is_obj_initialized((unsigned long)ptr,
        BYTES_PER_POINTER))
   continue;

  pointer = *ptr;

  object = find_and_get_object(pointer, 1);
  if (!object)
   continue;
  if (object == scanned) {

   put_object(object);
   continue;
  }






  spin_lock_irqsave_nested(&object->lock, flags,
      SINGLE_DEPTH_NESTING);
  if (!color_white(object)) {

   spin_unlock_irqrestore(&object->lock, flags);
   put_object(object);
   continue;
  }







  object->count++;
  if (color_gray(object))
   list_add_tail(&object->gray_list, &gray_list);
  else
   put_object(object);
  spin_unlock_irqrestore(&object->lock, flags);
 }
}
