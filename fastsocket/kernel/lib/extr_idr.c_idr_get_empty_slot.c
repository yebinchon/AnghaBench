
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int layer; scalar_t__ count; scalar_t__ bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; int lock; } ;


 int IDR_BITS ;
 scalar_t__ IDR_FULL ;
 int IDR_NEED_TO_GROW ;
 int MAX_LEVEL ;
 int __move_to_free_list (struct idr*,struct idr_layer*) ;
 int __set_bit (int ,scalar_t__*) ;
 struct idr_layer* get_from_free_list (struct idr*) ;
 int rcu_assign_pointer (struct idr_layer*,struct idr_layer*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sub_alloc (struct idr*,int*,struct idr_layer**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int idr_get_empty_slot(struct idr *idp, int starting_id,
         struct idr_layer **pa)
{
 struct idr_layer *p, *new;
 int layers, v, id;
 unsigned long flags;

 id = starting_id;
build_up:
 p = idp->top;
 layers = idp->layers;
 if (unlikely(!p)) {
  if (!(p = get_from_free_list(idp)))
   return -1;
  p->layer = 0;
  layers = 1;
 }




 while ((layers < (MAX_LEVEL - 1)) && (id >= (1 << (layers*IDR_BITS)))) {
  layers++;
  if (!p->count) {




   p->layer++;
   continue;
  }
  if (!(new = get_from_free_list(idp))) {




   spin_lock_irqsave(&idp->lock, flags);
   for (new = p; p && p != idp->top; new = p) {
    p = p->ary[0];
    new->ary[0] = ((void*)0);
    new->bitmap = new->count = 0;
    __move_to_free_list(idp, new);
   }
   spin_unlock_irqrestore(&idp->lock, flags);
   return -1;
  }
  new->ary[0] = p;
  new->count = 1;
  new->layer = layers-1;
  if (p->bitmap == IDR_FULL)
   __set_bit(0, &new->bitmap);
  p = new;
 }
 rcu_assign_pointer(idp->top, p);
 idp->layers = layers;
 v = sub_alloc(idp, &id, pa);
 if (v == IDR_NEED_TO_GROW)
  goto build_up;
 return(v);
}
