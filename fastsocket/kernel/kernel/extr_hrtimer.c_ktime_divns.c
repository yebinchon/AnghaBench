
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;
typedef int ktime_t ;


 int do_div (int,unsigned long) ;
 int ktime_to_ns (int const) ;

u64 ktime_divns(const ktime_t kt, s64 div)
{
 u64 dclc;
 int sft = 0;

 dclc = ktime_to_ns(kt);

 while (div >> 32) {
  sft++;
  div >>= 1;
 }
 dclc >>= sft;
 do_div(dclc, (unsigned long) div);

 return dclc;
}
