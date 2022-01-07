
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int memcmp(const void *cs, const void *ct, size_t count)
{
 const unsigned char *su1, *su2;
 int res = 0;

 for (su1 = cs, su2 = ct; 0 < count; ++su1, ++su2, count--)
  if ((res = *su1 - *su2) != 0)
   break;
 return res;
}
