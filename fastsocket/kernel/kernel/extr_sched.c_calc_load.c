
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FIXED_1 ;
 unsigned long FSHIFT ;

__attribute__((used)) static unsigned long
calc_load(unsigned long load, unsigned long exp, unsigned long active)
{
 load *= exp;
 load += active * (FIXED_1 - exp);
 return load >> FSHIFT;
}
