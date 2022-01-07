
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {unsigned long block_size; void* physical_address; } ;
struct sep_device {void* shared_addr; } ;


 int SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP ;
 int SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES ;
 int dbg (char*,...) ;
 int edbg (char*,unsigned long) ;
 int sep_build_lli_table (struct sep_lli_entry_t*,struct sep_lli_entry_t*,unsigned long*,unsigned long*,unsigned long) ;
 unsigned long sep_calculate_lli_table_max_size (struct sep_lli_entry_t*,unsigned long) ;
 int sep_debug_print_lli_tables (struct sep_device*,struct sep_lli_entry_t*,unsigned long,unsigned long) ;
 scalar_t__ sep_shared_bus_to_virt (struct sep_device*,unsigned long) ;
 void* sep_shared_virt_to_bus (struct sep_device*,struct sep_lli_entry_t*) ;

__attribute__((used)) static int sep_construct_dma_tables_from_lli(struct sep_device *sep,
          struct sep_lli_entry_t *lli_in_array,
          unsigned long sep_in_lli_entries,
          struct sep_lli_entry_t *lli_out_array,
          unsigned long sep_out_lli_entries,
          unsigned long block_size, unsigned long *lli_table_in_ptr, unsigned long *lli_table_out_ptr, unsigned long *in_num_entries_ptr, unsigned long *out_num_entries_ptr, unsigned long *table_data_size_ptr)
{


 void *lli_table_alloc_addr;

 struct sep_lli_entry_t *in_lli_table_ptr;

 struct sep_lli_entry_t *out_lli_table_ptr;

 struct sep_lli_entry_t *info_in_entry_ptr;

 struct sep_lli_entry_t *info_out_entry_ptr;

 unsigned long current_in_entry;

 unsigned long current_out_entry;

 unsigned long in_table_data_size;

 unsigned long out_table_data_size;

 unsigned long first_table_flag;

 unsigned long table_data_size;

 unsigned long num_entries_in_table;

 unsigned long num_entries_out_table;

 dbg("SEP Driver:--------> sep_construct_dma_tables_from_lli start\n");


 lli_table_alloc_addr = sep->shared_addr + SEP_DRIVER_SYNCHRONIC_DMA_TABLES_AREA_OFFSET_IN_BYTES;

 current_in_entry = 0;
 current_out_entry = 0;
 first_table_flag = 1;
 info_in_entry_ptr = 0;
 info_out_entry_ptr = 0;


 while (current_in_entry < sep_in_lli_entries) {

  in_lli_table_ptr = (struct sep_lli_entry_t *) lli_table_alloc_addr;

  lli_table_alloc_addr += sizeof(struct sep_lli_entry_t) * SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP;


  out_lli_table_ptr = (struct sep_lli_entry_t *) lli_table_alloc_addr;

  lli_table_alloc_addr += sizeof(struct sep_lli_entry_t) * SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP;


  in_table_data_size = sep_calculate_lli_table_max_size(&lli_in_array[current_in_entry], (sep_in_lli_entries - current_in_entry));


  out_table_data_size = sep_calculate_lli_table_max_size(&lli_out_array[current_out_entry], (sep_out_lli_entries - current_out_entry));

  edbg("SEP Driver:in_table_data_size is %lu\n", in_table_data_size);
  edbg("SEP Driver:out_table_data_size is %lu\n", out_table_data_size);


  table_data_size = in_table_data_size;
  if (table_data_size > out_table_data_size)
   table_data_size = out_table_data_size;


  table_data_size = (table_data_size / block_size) * block_size;

  dbg("SEP Driver:table_data_size is %lu\n", table_data_size);


  sep_build_lli_table(&lli_in_array[current_in_entry], in_lli_table_ptr, &current_in_entry, &num_entries_in_table, table_data_size);


  sep_build_lli_table(&lli_out_array[current_out_entry], out_lli_table_ptr, &current_out_entry, &num_entries_out_table, table_data_size);


  if (info_in_entry_ptr == 0) {

   *lli_table_in_ptr = sep_shared_virt_to_bus(sep, in_lli_table_ptr);
   *in_num_entries_ptr = num_entries_in_table;
   *lli_table_out_ptr = sep_shared_virt_to_bus(sep, out_lli_table_ptr);
   *out_num_entries_ptr = num_entries_out_table;
   *table_data_size_ptr = table_data_size;

   edbg("SEP Driver:output lli_table_in_ptr is %08lx\n", *lli_table_in_ptr);
   edbg("SEP Driver:output lli_table_out_ptr is %08lx\n", *lli_table_out_ptr);
  } else {

   info_in_entry_ptr->physical_address = sep_shared_virt_to_bus(sep, in_lli_table_ptr);
   info_in_entry_ptr->block_size = ((num_entries_in_table) << 24) | (table_data_size);


   info_out_entry_ptr->physical_address = sep_shared_virt_to_bus(sep, out_lli_table_ptr);
   info_out_entry_ptr->block_size = ((num_entries_out_table) << 24) | (table_data_size);
  }


  info_in_entry_ptr = in_lli_table_ptr + num_entries_in_table - 1;
  info_out_entry_ptr = out_lli_table_ptr + num_entries_out_table - 1;

  edbg("SEP Driver:output num_entries_out_table is %lu\n", (unsigned long) num_entries_out_table);
  edbg("SEP Driver:output info_in_entry_ptr is %lu\n", (unsigned long) info_in_entry_ptr);
  edbg("SEP Driver:output info_out_entry_ptr is %lu\n", (unsigned long) info_out_entry_ptr);
 }


 sep_debug_print_lli_tables(sep, (struct sep_lli_entry_t *)
       sep_shared_bus_to_virt(sep, *lli_table_in_ptr), *in_num_entries_ptr, *table_data_size_ptr);

 sep_debug_print_lli_tables(sep, (struct sep_lli_entry_t *)
       sep_shared_bus_to_virt(sep, *lli_table_out_ptr), *out_num_entries_ptr, *table_data_size_ptr);
 dbg("SEP Driver:<-------- sep_construct_dma_tables_from_lli end\n");
 return 0;
}
