
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phys_addr_t ;


 int __pa (void*) ;

phys_addr_t per_cpu_ptr_to_phys(void *addr)
{
 return __pa(addr);
}
