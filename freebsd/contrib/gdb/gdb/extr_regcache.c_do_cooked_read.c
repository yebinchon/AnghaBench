
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regcache {scalar_t__ readonly_p; int * register_valid_p; } ;


 int regcache_cooked_read (struct regcache*,int,void*) ;

__attribute__((used)) static int
do_cooked_read (void *src, int regnum, void *buf)
{
  struct regcache *regcache = src;
  if (!regcache->register_valid_p[regnum] && regcache->readonly_p)



    return 0;
  regcache_cooked_read (regcache, regnum, buf);
  return 1;
}
