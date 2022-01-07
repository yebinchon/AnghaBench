
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct dcache_block {int dummy; } ;
struct TYPE_5__ {struct dcache_block* the_cache; } ;
typedef TYPE_1__ DCACHE ;


 int DCACHE_SIZE ;
 int dcache_invalidate (TYPE_1__*) ;
 TYPE_1__* last_cache ;
 int memset (struct dcache_block*,int ,int) ;
 scalar_t__ xmalloc (int) ;

DCACHE *
dcache_init (void)
{
  int csize = sizeof (struct dcache_block) * DCACHE_SIZE;
  DCACHE *dcache;

  dcache = (DCACHE *) xmalloc (sizeof (*dcache));

  dcache->the_cache = (struct dcache_block *) xmalloc (csize);
  memset (dcache->the_cache, 0, csize);

  dcache_invalidate (dcache);

  last_cache = dcache;
  return dcache;
}
