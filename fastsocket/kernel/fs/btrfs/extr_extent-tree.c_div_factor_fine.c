
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int do_div (int,int) ;

__attribute__((used)) static u64 div_factor_fine(u64 num, int factor)
{
 if (factor == 100)
  return num;
 num *= factor;
 do_div(num, 100);
 return num;
}
