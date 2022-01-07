
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int size; int address; } ;


 int FDT_CHECK_HEADER (void const*) ;
 TYPE_1__* _fdt_mem_rsv (void const*,int) ;
 int fdt64_to_cpu (int ) ;

int fdt_get_mem_rsv(const void *fdt, int n, uint64_t *address, uint64_t *size)
{
 FDT_CHECK_HEADER(fdt);
 *address = fdt64_to_cpu(_fdt_mem_rsv(fdt, n)->address);
 *size = fdt64_to_cpu(_fdt_mem_rsv(fdt, n)->size);
 return 0;
}
