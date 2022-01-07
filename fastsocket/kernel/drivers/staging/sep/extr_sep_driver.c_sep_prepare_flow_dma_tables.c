
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {int physical_address; int block_size; } ;
struct sep_flow_context_t {int dummy; } ;
struct sep_device {int dummy; } ;


 int SEP_INT_FLAG_OFFSET_IN_BITS ;
 int get_user (unsigned long,unsigned long*) ;
 int sep_prepare_one_flow_dma_table (struct sep_device*,unsigned long,unsigned long,struct sep_lli_entry_t*,struct sep_lli_entry_t**,struct sep_flow_context_t*,int) ;

__attribute__((used)) static int sep_prepare_flow_dma_tables(struct sep_device *sep,
     unsigned long num_virtual_buffers,
            unsigned long first_buff_addr, struct sep_flow_context_t *flow_data_ptr, struct sep_lli_entry_t *first_table_data_ptr, struct sep_lli_entry_t *last_table_data_ptr, bool isKernelVirtualAddress)
{
 int error;
 unsigned long virt_buff_addr;
 unsigned long virt_buff_size;
 struct sep_lli_entry_t table_data;
 struct sep_lli_entry_t *info_entry_ptr;
 struct sep_lli_entry_t *prev_info_entry_ptr;
 unsigned long i;


 error = 0;
 prev_info_entry_ptr = 0;


 table_data.physical_address = 0xffffffff;
 first_table_data_ptr->physical_address = 0xffffffff;
 table_data.block_size = 0;

 for (i = 0; i < num_virtual_buffers; i++) {

  error = get_user(virt_buff_addr, &first_buff_addr);
  if (error)
   goto end_function;


  first_buff_addr++;
  error = get_user(virt_buff_size, &first_buff_addr);
  if (error)
   goto end_function;


  first_buff_addr++;


  error = sep_prepare_one_flow_dma_table(sep, virt_buff_addr, virt_buff_size, &table_data, &info_entry_ptr, flow_data_ptr, isKernelVirtualAddress);
  if (error)
   goto end_function;

  if (i == 0) {


   *first_table_data_ptr = table_data;


   prev_info_entry_ptr = info_entry_ptr;
  } else {


   prev_info_entry_ptr->block_size = (0x1 << SEP_INT_FLAG_OFFSET_IN_BITS) | (table_data.block_size);


   prev_info_entry_ptr = info_entry_ptr;
  }
 }


 *last_table_data_ptr = table_data;
end_function:
 return error;
}
