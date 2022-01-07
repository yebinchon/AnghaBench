
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {int physical_address; unsigned long block_size; } ;
struct sep_flow_context_t {int dummy; } ;
struct sep_device {int dummy; } ;
struct page {int dummy; } ;


 unsigned long SEP_NUM_ENTRIES_OFFSET_IN_BITS ;
 int kfree (struct sep_lli_entry_t*) ;
 int sep_find_free_flow_dma_table_space (struct sep_device*,unsigned long**) ;
 int sep_lock_kernel_pages (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,struct page***) ;
 int sep_lock_user_pages (struct sep_device*,unsigned long,unsigned long,unsigned long*,struct sep_lli_entry_t**,struct page***) ;
 int virt_to_phys (unsigned long*) ;

__attribute__((used)) static int sep_prepare_one_flow_dma_table(struct sep_device *sep,
     unsigned long virt_buff_addr,
     unsigned long virt_buff_size,
     struct sep_lli_entry_t *table_data,
     struct sep_lli_entry_t **info_entry_ptr,
     struct sep_flow_context_t *flow_data_ptr,
     bool isKernelVirtualAddress)
{
 int error;

 unsigned long lli_array_size;
 struct sep_lli_entry_t *lli_array;
 struct sep_lli_entry_t *flow_dma_table_entry_ptr;
 unsigned long *start_dma_table_ptr;

 unsigned long dma_table_data_count;

 struct page **page_array_ptr;
 unsigned long entry_count;


 error = sep_find_free_flow_dma_table_space(sep, &start_dma_table_ptr);
 if (error)
  goto end_function;


 if (isKernelVirtualAddress == 1)

  error = sep_lock_kernel_pages(sep, virt_buff_addr, virt_buff_size, &lli_array_size, &lli_array, &page_array_ptr);
 else

  error = sep_lock_user_pages(sep, virt_buff_addr, virt_buff_size, &lli_array_size, &lli_array, &page_array_ptr);

 if (error)
  goto end_function;



 *start_dma_table_ptr = lli_array_size;


 start_dma_table_ptr++;


 *start_dma_table_ptr = (unsigned long) page_array_ptr;


 flow_dma_table_entry_ptr = (struct sep_lli_entry_t *) (++start_dma_table_ptr);


 for (dma_table_data_count = entry_count = 0; entry_count < lli_array_size; entry_count++) {
  flow_dma_table_entry_ptr->physical_address = lli_array[entry_count].physical_address;

  flow_dma_table_entry_ptr->block_size = lli_array[entry_count].block_size;


  dma_table_data_count += lli_array[entry_count].block_size;

  flow_dma_table_entry_ptr++;
 }


 table_data->physical_address = virt_to_phys(start_dma_table_ptr);


 table_data->block_size = ((lli_array_size + 1) << SEP_NUM_ENTRIES_OFFSET_IN_BITS) | (dma_table_data_count);


 flow_dma_table_entry_ptr->physical_address = 0xffffffff;
 flow_dma_table_entry_ptr->block_size = 0;


 *info_entry_ptr = flow_dma_table_entry_ptr;


 kfree(lli_array);
end_function:
 return error;
}
