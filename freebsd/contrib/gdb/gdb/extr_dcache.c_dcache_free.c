
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* the_cache; } ;
typedef TYPE_1__ DCACHE ;


 TYPE_1__* last_cache ;
 int xfree (TYPE_1__*) ;

void
dcache_free (DCACHE *dcache)
{
  if (last_cache == dcache)
    last_cache = ((void*)0);

  xfree (dcache->the_cache);
  xfree (dcache);
}
