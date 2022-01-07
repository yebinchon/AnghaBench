
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct fdt_reserve_entry {void* size; void* address; } ;


 int FDT_RW_CHECK_HEADER (void*) ;
 struct fdt_reserve_entry* _fdt_mem_rsv_w (void*,int ) ;
 int _fdt_splice_mem_rsv (void*,struct fdt_reserve_entry*,int ,int) ;
 void* cpu_to_fdt64 (int ) ;
 int fdt_num_mem_rsv (void*) ;

int fdt_add_mem_rsv(void *fdt, uint64_t address, uint64_t size)
{
 struct fdt_reserve_entry *re;
 int err;

 FDT_RW_CHECK_HEADER(fdt);

 re = _fdt_mem_rsv_w(fdt, fdt_num_mem_rsv(fdt));
 err = _fdt_splice_mem_rsv(fdt, re, 0, 1);
 if (err)
  return err;

 re->address = cpu_to_fdt64(address);
 re->size = cpu_to_fdt64(size);
 return 0;
}
