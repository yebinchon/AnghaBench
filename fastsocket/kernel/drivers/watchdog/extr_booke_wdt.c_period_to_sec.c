
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_div (unsigned long long,unsigned long) ;
 unsigned long ppc_tb_freq ;

__attribute__((used)) static unsigned long long period_to_sec(unsigned int period)
{
 unsigned long long tmp = 1ULL << (64 - period);
 unsigned long tmp2 = ppc_tb_freq;




 tmp2 = tmp2 / 5 * 2;

 do_div(tmp, tmp2);
 return tmp;
}
