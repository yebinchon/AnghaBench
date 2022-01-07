
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_regcache ;
 int regcache_raw_collect (int ,int,void*) ;

void
regcache_collect (int regnum, void *buf)
{
  regcache_raw_collect (current_regcache, regnum, buf);
}
