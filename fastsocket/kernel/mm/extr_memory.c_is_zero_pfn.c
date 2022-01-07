
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long zero_pfn ;

__attribute__((used)) static inline int is_zero_pfn(unsigned long pfn)
{
 return pfn == zero_pfn;
}
