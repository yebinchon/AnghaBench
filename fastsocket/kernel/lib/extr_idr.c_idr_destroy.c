
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int dummy; } ;
struct idr {scalar_t__ id_free_cnt; } ;


 struct idr_layer* get_from_free_list (struct idr*) ;
 int idr_layer_cache ;
 int kmem_cache_free (int ,struct idr_layer*) ;

void idr_destroy(struct idr *idp)
{
 while (idp->id_free_cnt) {
  struct idr_layer *p = get_from_free_list(idp);
  kmem_cache_free(idr_layer_cache, p);
 }
}
