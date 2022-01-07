
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kmem_cache {TYPE_1__** nodelists; } ;
struct array_cache {scalar_t__ avail; int entry; } ;
struct TYPE_2__ {int list_lock; } ;


 int check_irq_off () ;
 struct array_cache* cpu_cache_get (struct kmem_cache*) ;
 int free_block (struct kmem_cache*,int ,scalar_t__,int) ;
 int numa_node_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void do_drain(void *arg)
{
 struct kmem_cache *cachep = arg;
 struct array_cache *ac;
 int node = numa_node_id();

 check_irq_off();
 ac = cpu_cache_get(cachep);
 spin_lock(&cachep->nodelists[node]->list_lock);
 free_block(cachep, ac->entry, ac->avail, node);
 spin_unlock(&cachep->nodelists[node]->list_lock);
 ac->avail = 0;
}
