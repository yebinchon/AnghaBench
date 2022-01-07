
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int register_sysrq_key (char,int *) ;
 int sysrq_poweroff_op ;

__attribute__((used)) static int pm_sysrq_init(void)
{
 register_sysrq_key('o', &sysrq_poweroff_op);
 return 0;
}
