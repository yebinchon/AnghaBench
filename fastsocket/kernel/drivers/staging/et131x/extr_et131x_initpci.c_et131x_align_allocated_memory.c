
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct et131x_adapter {int dummy; } ;



void et131x_align_allocated_memory(struct et131x_adapter *adapter,
       uint64_t *phys_addr,
       uint64_t *offset, uint64_t mask)
{
 uint64_t new_addr;

 *offset = 0;

 new_addr = *phys_addr & ~mask;

 if (new_addr != *phys_addr) {

  new_addr += mask + 1;

  *offset = new_addr - *phys_addr;

  *phys_addr = new_addr;
 }
}
