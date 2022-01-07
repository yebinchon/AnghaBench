
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fdt_header {int dummy; } ;


 scalar_t__ FDT_ALIGN (int,int) ;
 scalar_t__ fdt_off_dt_strings (void const*) ;
 scalar_t__ fdt_off_dt_struct (void const*) ;
 scalar_t__ fdt_off_mem_rsvmap (void const*) ;
 scalar_t__ fdt_size_dt_strings (void const*) ;
 scalar_t__ fdt_totalsize (void const*) ;

__attribute__((used)) static int _fdt_blocks_misordered(const void *fdt,
         int mem_rsv_size, int struct_size)
{
 return (fdt_off_mem_rsvmap(fdt) < FDT_ALIGN(sizeof(struct fdt_header), 8))
  || (fdt_off_dt_struct(fdt) <
      (fdt_off_mem_rsvmap(fdt) + mem_rsv_size))
  || (fdt_off_dt_strings(fdt) <
      (fdt_off_dt_struct(fdt) + struct_size))
  || (fdt_totalsize(fdt) <
      (fdt_off_dt_strings(fdt) + fdt_size_dt_strings(fdt)));
}
