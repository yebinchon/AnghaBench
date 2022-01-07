
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint64_t ;
typedef scalar_t__ __uint32_t ;


 int ffs (scalar_t__) ;

__attribute__((used)) static inline int xfs_lowbit64(__uint64_t v)
{
 __uint32_t w = (__uint32_t)v;
 int n = 0;

 if (w) {
  n = ffs(w);
 } else {
  w = (__uint32_t)(v >> 32);
  if (w && (n = ffs(w)))
  n += 32;
 }
 return n - 1;
}
