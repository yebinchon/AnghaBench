
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int regcache_xfree (void*) ;

__attribute__((used)) static void
do_regcache_xfree (void *data)
{
  regcache_xfree (data);
}
