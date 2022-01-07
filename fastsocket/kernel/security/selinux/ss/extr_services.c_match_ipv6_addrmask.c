
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static int match_ipv6_addrmask(u32 *input, u32 *addr, u32 *mask)
{
 int i, fail = 0;

 for (i = 0; i < 4; i++)
  if (addr[i] != (input[i] & mask[i])) {
   fail = 1;
   break;
  }

 return !fail;
}
