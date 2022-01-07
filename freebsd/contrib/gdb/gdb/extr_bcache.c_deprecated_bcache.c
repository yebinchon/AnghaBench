
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcache {int dummy; } ;


 void* bcache_data (void const*,int,struct bcache*) ;

void *
deprecated_bcache (const void *addr, int length, struct bcache *bcache)
{
  return bcache_data (addr, length, bcache);
}
