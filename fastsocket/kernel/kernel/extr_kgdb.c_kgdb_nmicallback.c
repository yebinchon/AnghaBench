
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 size_t atomic_read (int *) ;
 int * cpu_in_kgdb ;
 int kgdb_active ;
 int kgdb_wait (struct pt_regs*) ;

int kgdb_nmicallback(int cpu, void *regs)
{
 return 1;
}
