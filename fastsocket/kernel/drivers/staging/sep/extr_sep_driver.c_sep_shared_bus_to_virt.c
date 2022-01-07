
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {void* shared_addr; void* shared_bus; } ;
typedef void* dma_addr_t ;



__attribute__((used)) static void *sep_shared_bus_to_virt(struct sep_device *sep,
      dma_addr_t bus_address)
{
 return sep->shared_addr + (bus_address - sep->shared_bus);
}
