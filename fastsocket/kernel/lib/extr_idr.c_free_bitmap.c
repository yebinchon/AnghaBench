
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ida_bitmap {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct ida {TYPE_1__ idr; struct ida_bitmap* free_bitmap; } ;


 int kfree (struct ida_bitmap*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void free_bitmap(struct ida *ida, struct ida_bitmap *bitmap)
{
 unsigned long flags;

 if (!ida->free_bitmap) {
  spin_lock_irqsave(&ida->idr.lock, flags);
  if (!ida->free_bitmap) {
   ida->free_bitmap = bitmap;
   bitmap = ((void*)0);
  }
  spin_unlock_irqrestore(&ida->idr.lock, flags);
 }

 kfree(bitmap);
}
