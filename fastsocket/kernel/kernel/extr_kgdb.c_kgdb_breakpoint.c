
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arch_kgdb_breakpoint () ;
 int atomic_set (int *,int) ;
 int kgdb_setting_breakpoint ;
 int wmb () ;

void kgdb_breakpoint(void)
{
 atomic_set(&kgdb_setting_breakpoint, 1);
 wmb();
 arch_kgdb_breakpoint();
 wmb();
 atomic_set(&kgdb_setting_breakpoint, 0);
}
