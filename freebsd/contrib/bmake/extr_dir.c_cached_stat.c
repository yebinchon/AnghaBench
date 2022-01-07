
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cached_stats (int *,char const*,void*,int ) ;
 int mtimes ;

int
cached_stat(const char *pathname, void *st)
{
    return cached_stats(&mtimes, pathname, st, 0);
}
