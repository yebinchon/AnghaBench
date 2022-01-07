
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int do_div (int,int) ;

__attribute__((used)) static u64 div_factor(u64 num, int factor)
{
 if (factor == 10)
  return num;
 num *= factor;
 do_div(num, 10);
 return num;
}
