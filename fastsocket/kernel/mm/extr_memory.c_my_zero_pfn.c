
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long zero_pfn ;

__attribute__((used)) static inline unsigned long my_zero_pfn(unsigned long addr)
{
 return zero_pfn;
}
