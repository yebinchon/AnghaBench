
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static inline int in_scope(u32 domain, u32 addr)
{
 if (!domain || (domain == addr))
  return 1;
 if (domain == (addr & 0xfffff000u))
  return 1;
 if (domain == (addr & 0xff000000u))
  return 1;
 return 0;
}
