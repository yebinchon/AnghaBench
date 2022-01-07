
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;


 int do_div (scalar_t__,int ) ;

u32 reciprocal_value(u32 k)
{
 u64 val = (1LL << 32) + (k - 1);
 do_div(val, k);
 return (u32)val;
}
