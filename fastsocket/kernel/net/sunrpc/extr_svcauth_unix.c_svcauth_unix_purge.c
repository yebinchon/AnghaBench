
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cache_purge (int *) ;
 int ip_map_cache ;

void svcauth_unix_purge(void)
{
 cache_purge(&ip_map_cache);
}
