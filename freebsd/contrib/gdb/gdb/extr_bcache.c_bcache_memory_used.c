
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache {int cache; } ;


 int obstack_memory_used (int *) ;

int
bcache_memory_used (struct bcache *bcache)
{
  return obstack_memory_used (&bcache->cache);
}
