
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int dummy; } ;
struct idr {scalar_t__ id_free_cnt; } ;
typedef int gfp_t ;


 scalar_t__ IDR_FREE_MAX ;
 int idr_layer_cache ;
 struct idr_layer* kmem_cache_zalloc (int ,int ) ;
 int move_to_free_list (struct idr*,struct idr_layer*) ;

int idr_pre_get(struct idr *idp, gfp_t gfp_mask)
{
 while (idp->id_free_cnt < IDR_FREE_MAX) {
  struct idr_layer *new;
  new = kmem_cache_zalloc(idr_layer_cache, gfp_mask);
  if (new == ((void*)0))
   return (0);
  move_to_free_list(idp, new);
 }
 return 1;
}
