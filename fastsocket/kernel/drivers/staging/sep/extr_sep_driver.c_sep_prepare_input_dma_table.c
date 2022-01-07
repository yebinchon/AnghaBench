
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {unsigned long physical_address; unsigned long block_size; } ;
struct sep_device {unsigned long in_num_pages; long shared_bus; void* shared_addr; int in_page_array; } ;


 int SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP ;
 long SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES ;
 int dbg (char*) ;
 int edbg (char*,unsigned long) ;
 int kfree (struct sep_lli_entry_t*) ;
 int sep_build_lli_table (struct sep_lli_entry_t*,struct sep_lli_entry_t*,unsigned long*,unsigned long*,unsigned long) ;
 unsigned long sep_calculate_lli_table_max_size (struct sep_lli_entry_t*,unsigned long) ;
 int sep_debug_print_lli_tables (struct sep_device*,struct sep_lli_entry_t*,unsigned long,unsigned long) ;
 unsigned long sep_lock_kernel_pages (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,int *) ;
 unsigned long sep_lock_user_pages (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,int *) ;
 scalar_t__ sep_shared_bus_to_virt (struct sep_device*,unsigned long) ;
 void* sep_shared_virt_to_bus (struct sep_device*,struct sep_lli_entry_t*) ;

__attribute__((used)) static int sep_prepare_input_dma_table(struct sep_device *sep,
    unsigned long app_virt_addr,
    unsigned long data_size,
    unsigned long block_size,
    unsigned long *lli_table_ptr,
    unsigned long *num_entries_ptr,
    unsigned long *table_data_size_ptr,
    bool isKernelVirtualAddress)
{

 struct sep_lli_entry_t *info_entry_ptr;

 struct sep_lli_entry_t *lli_array_ptr;

 unsigned long current_entry;

 unsigned long sep_lli_entries;

 struct sep_lli_entry_t *in_lli_table_ptr;

 unsigned long table_data_size;

 unsigned long num_entries_in_table;

 void *lli_table_alloc_addr;
 unsigned long result;

 dbg("SEP Driver:--------> sep_prepare_input_dma_table start\n");

 edbg("SEP Driver:data_size is %lu\n", data_size);
 edbg("SEP Driver:block_size is %lu\n", block_size);


 sep->in_page_array = 0;
 sep->in_num_pages = 0;

 if (data_size == 0) {

  in_lli_table_ptr = (struct sep_lli_entry_t *) (sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES);

  in_lli_table_ptr->physical_address = (unsigned long)sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;
  in_lli_table_ptr->block_size = 0;

  in_lli_table_ptr++;
  in_lli_table_ptr->physical_address = 0xFFFFFFFF;
  in_lli_table_ptr->block_size = 0;

  *lli_table_ptr = sep->shared_bus + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;
  *num_entries_ptr = 2;
  *table_data_size_ptr = 0;

  goto end_function;
 }


 if (isKernelVirtualAddress == 1)

  result = sep_lock_kernel_pages(sep, app_virt_addr, data_size, &sep->in_num_pages, &lli_array_ptr, &sep->in_page_array);
 else

  result = sep_lock_user_pages(sep, app_virt_addr, data_size, &sep->in_num_pages, &lli_array_ptr, &sep->in_page_array);

 if (result)
  return result;

 edbg("SEP Driver:output sep->in_num_pages is %lu\n", sep->in_num_pages);

 current_entry = 0;
 info_entry_ptr = 0;
 sep_lli_entries = sep->in_num_pages;


 lli_table_alloc_addr = sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;


 while (current_entry < sep_lli_entries) {

  in_lli_table_ptr = (struct sep_lli_entry_t *) lli_table_alloc_addr;

  lli_table_alloc_addr += sizeof(struct sep_lli_entry_t) * SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP;


  table_data_size = sep_calculate_lli_table_max_size(&lli_array_ptr[current_entry], (sep_lli_entries - current_entry));


  table_data_size = (table_data_size / block_size) * block_size;

  edbg("SEP Driver:output table_data_size is %lu\n", table_data_size);


  sep_build_lli_table(&lli_array_ptr[current_entry], in_lli_table_ptr, &current_entry, &num_entries_in_table, table_data_size);

  if (info_entry_ptr == 0) {

   *lli_table_ptr = sep_shared_virt_to_bus(sep, in_lli_table_ptr);
   *num_entries_ptr = num_entries_in_table;
   *table_data_size_ptr = table_data_size;

   edbg("SEP Driver:output lli_table_in_ptr is %08lx\n", *lli_table_ptr);
  } else {

   info_entry_ptr->physical_address = sep_shared_virt_to_bus(sep, in_lli_table_ptr);
   info_entry_ptr->block_size = ((num_entries_in_table) << 24) | (table_data_size);
  }


  info_entry_ptr = in_lli_table_ptr + num_entries_in_table - 1;
 }


 sep_debug_print_lli_tables(sep, (struct sep_lli_entry_t *)
       sep_shared_bus_to_virt(sep, *lli_table_ptr), *num_entries_ptr, *table_data_size_ptr);


 kfree(lli_array_ptr);
end_function:
 dbg("SEP Driver:<-------- sep_prepare_input_dma_table end\n");
 return 0;

}
