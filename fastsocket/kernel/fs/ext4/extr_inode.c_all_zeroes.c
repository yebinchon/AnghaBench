
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int __le32 ;



__attribute__((used)) static inline int all_zeroes(__le32 *p, __le32 *q)
{
 while (p < q)
  if (*p++)
   return 0;
 return 1;
}
