
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint32_t ;



__attribute__((used)) static inline __uint32_t xfs_mask32lo(int n)
{
 return ((__uint32_t)1 << (n)) - 1;
}
