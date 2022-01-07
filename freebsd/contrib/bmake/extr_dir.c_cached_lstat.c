
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CST_LSTAT ;
 int cached_stats (int *,char const*,void*,int ) ;
 int lmtimes ;

int
cached_lstat(const char *pathname, void *st)
{
    return cached_stats(&lmtimes, pathname, st, CST_LSTAT);
}
