
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NUM_GPRS ;
 char const** gpr_names ;

const char *get_arch_regstr(unsigned int n)
{
 return (n >= NUM_GPRS) ? ((void*)0) : gpr_names[n];
}
