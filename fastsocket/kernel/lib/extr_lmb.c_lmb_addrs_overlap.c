
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;



__attribute__((used)) static unsigned long lmb_addrs_overlap(u64 base1, u64 size1, u64 base2,
     u64 size2)
{
 return ((base1 < (base2 + size2)) && (base2 < (base1 + size1)));
}
