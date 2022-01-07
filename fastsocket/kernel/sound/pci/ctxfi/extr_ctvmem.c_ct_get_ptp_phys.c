
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ct_vm {TYPE_1__* ptp; } ;
typedef unsigned long dma_addr_t ;
struct TYPE_2__ {unsigned long addr; } ;


 int CT_PTP_NUM ;

__attribute__((used)) static dma_addr_t
ct_get_ptp_phys(struct ct_vm *vm, int index)
{
 dma_addr_t addr;

 addr = (index >= CT_PTP_NUM) ? ~0UL : vm->ptp[index].addr;

 return addr;
}
