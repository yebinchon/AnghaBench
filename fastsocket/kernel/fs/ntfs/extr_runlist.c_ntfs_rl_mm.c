
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int runlist_element ;


 scalar_t__ likely (int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static inline void ntfs_rl_mm(runlist_element *base, int dst, int src,
  int size)
{
 if (likely((dst != src) && (size > 0)))
  memmove(base + dst, base + src, size * sizeof(*base));
}
