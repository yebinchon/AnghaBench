
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {int lock; int id_free_cnt; struct idr_layer* id_free; } ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static struct idr_layer *get_from_free_list(struct idr *idp)
{
 struct idr_layer *p;
 unsigned long flags;

 spin_lock_irqsave(&idp->lock, flags);
 if ((p = idp->id_free)) {
  idp->id_free = p->ary[0];
  idp->id_free_cnt--;
  p->ary[0] = ((void*)0);
 }
 spin_unlock_irqrestore(&idp->lock, flags);
 return(p);
}
