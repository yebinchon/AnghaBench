
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint64_t ;



__attribute__((used)) static inline __uint64_t xfs_mask64hi(int n)
{
 return (__uint64_t)-1 << (64 - (n));
}
