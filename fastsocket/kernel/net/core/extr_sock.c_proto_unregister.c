
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proto {TYPE_2__* twsk_prot; TYPE_1__* rsk_prot; int * slab; int node; } ;
struct TYPE_4__ {int * twsk_slab; int twsk_slab_name; } ;
struct TYPE_3__ {int * slab; int slab_name; } ;


 int kfree (int ) ;
 int kmem_cache_destroy (int *) ;
 int list_del (int *) ;
 int proto_list_lock ;
 int release_proto_idx (struct proto*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void proto_unregister(struct proto *prot)
{
 write_lock(&proto_list_lock);
 release_proto_idx(prot);
 list_del(&prot->node);
 write_unlock(&proto_list_lock);

 if (prot->slab != ((void*)0)) {
  kmem_cache_destroy(prot->slab);
  prot->slab = ((void*)0);
 }

 if (prot->rsk_prot != ((void*)0) && prot->rsk_prot->slab != ((void*)0)) {
  kmem_cache_destroy(prot->rsk_prot->slab);
  kfree(prot->rsk_prot->slab_name);
  prot->rsk_prot->slab = ((void*)0);
 }

 if (prot->twsk_prot != ((void*)0) && prot->twsk_prot->twsk_slab != ((void*)0)) {
  kmem_cache_destroy(prot->twsk_prot->twsk_slab);
  kfree(prot->twsk_prot->twsk_slab_name);
  prot->twsk_prot->twsk_slab = ((void*)0);
 }
}
