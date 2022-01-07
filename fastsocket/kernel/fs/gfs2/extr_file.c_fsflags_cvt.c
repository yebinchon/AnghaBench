
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 fsflags_cvt(const u32 *table, u32 val)
{
 u32 res = 0;
 while(val) {
  if (val & 1)
   res |= *table;
  table++;
  val >>= 1;
 }
 return res;
}
