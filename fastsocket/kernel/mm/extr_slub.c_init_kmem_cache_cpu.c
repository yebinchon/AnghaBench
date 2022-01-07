
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kmem_cache_cpu {int offset; int stat; int objsize; scalar_t__ node; int * freelist; int * page; } ;
struct kmem_cache {int offset; int objsize; } ;


 int NR_SLUB_STAT_ITEMS ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void init_kmem_cache_cpu(struct kmem_cache *s,
   struct kmem_cache_cpu *c)
{
 c->page = ((void*)0);
 c->freelist = ((void*)0);
 c->node = 0;
 c->offset = s->offset / sizeof(void *);
 c->objsize = s->objsize;



}
