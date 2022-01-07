
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache {struct bcache* bucket; int cache; } ;


 int obstack_free (int *,int ) ;
 int xfree (struct bcache*) ;

void
bcache_xfree (struct bcache *bcache)
{
  if (bcache == ((void*)0))
    return;
  obstack_free (&bcache->cache, 0);
  xfree (bcache->bucket);
  xfree (bcache);
}
