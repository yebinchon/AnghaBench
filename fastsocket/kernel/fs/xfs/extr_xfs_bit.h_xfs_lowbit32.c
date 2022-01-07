
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __uint32_t ;


 int ffs (int ) ;

__attribute__((used)) static inline int xfs_lowbit32(__uint32_t v)
{
 return ffs(v) - 1;
}
