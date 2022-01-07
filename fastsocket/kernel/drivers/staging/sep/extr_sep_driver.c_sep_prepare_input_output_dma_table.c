
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {int dummy; } ;
struct sep_device {int out_num_pages; int in_num_pages; int out_page_array; int in_page_array; } ;


 int SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP ;
 int dbg (char*,...) ;
 int edbg (char*,...) ;
 int kfree (struct sep_lli_entry_t*) ;
 int sep_construct_dma_tables_from_lli (struct sep_device*,struct sep_lli_entry_t*,int ,struct sep_lli_entry_t*,int ,unsigned long,unsigned long*,unsigned long*,unsigned long*,unsigned long*,unsigned long*) ;
 int sep_lock_kernel_pages (struct sep_device*,unsigned long,unsigned long,int *,struct sep_lli_entry_t**,int *) ;
 int sep_lock_user_pages (struct sep_device*,unsigned long,unsigned long,int *,struct sep_lli_entry_t**,int *) ;

__attribute__((used)) static int sep_prepare_input_output_dma_table(struct sep_device *sep,
           unsigned long app_virt_in_addr,
           unsigned long app_virt_out_addr,
           unsigned long data_size,
           unsigned long block_size,
           unsigned long *lli_table_in_ptr, unsigned long *lli_table_out_ptr, unsigned long *in_num_entries_ptr, unsigned long *out_num_entries_ptr, unsigned long *table_data_size_ptr, bool isKernelVirtualAddress)
{

 struct sep_lli_entry_t *lli_in_array;

 struct sep_lli_entry_t *lli_out_array;
 int result = 0;

 dbg("SEP Driver:--------> sep_prepare_input_output_dma_table start\n");


 sep->in_page_array = 0;
 sep->out_page_array = 0;


 if (isKernelVirtualAddress == 1) {

  result = sep_lock_kernel_pages(sep, app_virt_in_addr, data_size, &sep->in_num_pages, &lli_in_array, &sep->in_page_array);
  if (result) {
   edbg("SEP Driver: sep_lock_kernel_pages for input virtual buffer failed\n");
   goto end_function;
  }
 } else {

  result = sep_lock_user_pages(sep, app_virt_in_addr, data_size, &sep->in_num_pages, &lli_in_array, &sep->in_page_array);
  if (result) {
   edbg("SEP Driver: sep_lock_user_pages for input virtual buffer failed\n");
   goto end_function;
  }
 }

 if (isKernelVirtualAddress == 1) {
  result = sep_lock_kernel_pages(sep, app_virt_out_addr, data_size, &sep->out_num_pages, &lli_out_array, &sep->out_page_array);
  if (result) {
   edbg("SEP Driver: sep_lock_kernel_pages for output virtual buffer failed\n");
   goto end_function_with_error1;
  }
 } else {
  result = sep_lock_user_pages(sep, app_virt_out_addr, data_size, &sep->out_num_pages, &lli_out_array, &sep->out_page_array);
  if (result) {
   edbg("SEP Driver: sep_lock_user_pages for output virtual buffer failed\n");
   goto end_function_with_error1;
  }
 }
 edbg("sep->in_num_pages is %lu\n", sep->in_num_pages);
 edbg("sep->out_num_pages is %lu\n", sep->out_num_pages);
 edbg("SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP is %x\n", SEP_DRIVER_ENTRIES_PER_TABLE_IN_SEP);



 result = sep_construct_dma_tables_from_lli(sep, lli_in_array, sep->in_num_pages, lli_out_array, sep->out_num_pages, block_size, lli_table_in_ptr, lli_table_out_ptr, in_num_entries_ptr, out_num_entries_ptr, table_data_size_ptr);
 if (result) {
  edbg("SEP Driver: sep_construct_dma_tables_from_lli failed\n");
  goto end_function_with_error2;
 }


 dbg("in_num_entries_ptr is %08lx\n", *in_num_entries_ptr);
 dbg("out_num_entries_ptr is %08lx\n", *out_num_entries_ptr);
 dbg("table_data_size_ptr is %08lx\n", *table_data_size_ptr);
end_function_with_error2:
 kfree(lli_out_array);
end_function_with_error1:
 kfree(lli_in_array);
end_function:
 dbg("SEP Driver:<-------- sep_prepare_input_output_dma_table end result = %d\n", (int) result);
 return result;

}
