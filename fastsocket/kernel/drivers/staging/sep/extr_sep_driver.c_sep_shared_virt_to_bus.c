
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {int shared_bus; void* shared_addr; } ;
typedef int dma_addr_t ;


 int edbg (char*,int,void*) ;

__attribute__((used)) static dma_addr_t sep_shared_virt_to_bus(struct sep_device *sep,
      void *virt_address)
{
 dma_addr_t pa = sep->shared_bus + (virt_address - sep->shared_addr);
 edbg("sep: virt to bus b %08llx v %p\n", pa, virt_address);
 return pa;
}
