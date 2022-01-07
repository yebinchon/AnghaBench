
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EARLY ;
 scalar_t__ g_cpucache_up ;

int slab_is_available(void)
{
 return g_cpucache_up >= EARLY;
}
