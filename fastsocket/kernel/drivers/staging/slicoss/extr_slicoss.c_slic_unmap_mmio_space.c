
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adapter {int * slic_regs; } ;


 int iounmap (int *) ;

__attribute__((used)) static void slic_unmap_mmio_space(struct adapter *adapter)
{
 if (adapter->slic_regs)
  iounmap(adapter->slic_regs);
 adapter->slic_regs = ((void*)0);
}
