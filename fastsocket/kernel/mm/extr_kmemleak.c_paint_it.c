
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmemleak_object {int lock; } ;


 int __paint_it (struct kmemleak_object*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void paint_it(struct kmemleak_object *object, int color)
{
 unsigned long flags;

 spin_lock_irqsave(&object->lock, flags);
 __paint_it(object, color);
 spin_unlock_irqrestore(&object->lock, flags);
}
