
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,unsigned long) ;

__attribute__((used)) static unsigned long sm501fb_ps_to_hz(unsigned long psvalue)
{
 unsigned long long numerator=1000000000000ULL;


 do_div(numerator, psvalue);
 return (unsigned long)numerator;
}
