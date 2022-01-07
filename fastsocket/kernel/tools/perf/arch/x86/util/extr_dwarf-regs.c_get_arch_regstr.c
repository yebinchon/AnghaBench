
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ARCH_MAX_REGS ;
 char const** arch_regs_table ;

const char *get_arch_regstr(unsigned int n)
{
 return (n <= ARCH_MAX_REGS) ? arch_regs_table[n] : ((void*)0);
}
