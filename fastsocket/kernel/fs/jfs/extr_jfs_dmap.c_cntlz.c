
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HIGHORDER ;

__attribute__((used)) static int cntlz(u32 value)
{
 int n;

 for (n = 0; n < 32; n++, value <<= 1) {
  if (value & HIGHORDER)
   break;
 }
 return (n);
}
