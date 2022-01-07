
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static inline int pohmelfs_mcache_cmp(u64 gen, u64 new)
{
 if (gen < new)
  return 1;
 if (gen > new)
  return -1;
 return 0;
}
