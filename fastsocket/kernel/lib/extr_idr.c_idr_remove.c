
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int count; int bitmap; struct idr_layer** ary; } ;
struct idr {int layers; scalar_t__ id_free_cnt; struct idr_layer* top; } ;


 int IDR_BITS ;
 scalar_t__ IDR_FREE_MAX ;
 int MAX_ID_MASK ;
 int free_layer (struct idr_layer*) ;
 struct idr_layer* get_from_free_list (struct idr*) ;
 int idr_layer_cache ;
 int kmem_cache_free (int ,struct idr_layer*) ;
 int rcu_assign_pointer (struct idr_layer*,struct idr_layer*) ;
 int sub_remove (struct idr*,int,int) ;

void idr_remove(struct idr *idp, int id)
{
 struct idr_layer *p;
 struct idr_layer *to_free;


 id &= MAX_ID_MASK;

 sub_remove(idp, (idp->layers - 1) * IDR_BITS, id);
 if (idp->top && idp->top->count == 1 && (idp->layers > 1) &&
     idp->top->ary[0]) {






  to_free = idp->top;
  p = idp->top->ary[0];
  rcu_assign_pointer(idp->top, p);
  --idp->layers;
  to_free->bitmap = to_free->count = 0;
  free_layer(to_free);
 }
 while (idp->id_free_cnt >= IDR_FREE_MAX) {
  p = get_from_free_list(idp);





  kmem_cache_free(idr_layer_cache, p);
 }
 return;
}
