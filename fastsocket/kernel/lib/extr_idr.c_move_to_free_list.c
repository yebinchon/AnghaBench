
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int dummy; } ;
struct idr {int lock; } ;


 int __move_to_free_list (struct idr*,struct idr_layer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void move_to_free_list(struct idr *idp, struct idr_layer *p)
{
 unsigned long flags;




 spin_lock_irqsave(&idp->lock, flags);
 __move_to_free_list(idp, p);
 spin_unlock_irqrestore(&idp->lock, flags);
}
