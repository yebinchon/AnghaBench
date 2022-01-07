
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {int dummy; } ;
struct sep_device {void* shared_addr; } ;


 int SEP_DRIVER_FLOW_DMA_TABLES_AREA_OFFSET_IN_BYTES ;
 int SEP_DRIVER_FLOW_DMA_TABLES_AREA_SIZE_IN_BYTES ;
 int SEP_DRIVER_MAX_FLOW_NUM_ENTRIES_IN_TABLE ;

__attribute__((used)) static int sep_find_free_flow_dma_table_space(struct sep_device *sep,
     unsigned long **table_address_ptr)
{
 int error = 0;

 unsigned long *start_table_ptr;


 void *flow_dma_area_start_addr;
 unsigned long *flow_dma_area_end_addr;

 unsigned long table_size_in_words;


 flow_dma_area_start_addr = sep->shared_addr + SEP_DRIVER_FLOW_DMA_TABLES_AREA_OFFSET_IN_BYTES;


 flow_dma_area_end_addr = flow_dma_area_start_addr + SEP_DRIVER_FLOW_DMA_TABLES_AREA_SIZE_IN_BYTES;


 table_size_in_words = SEP_DRIVER_MAX_FLOW_NUM_ENTRIES_IN_TABLE * (sizeof(struct sep_lli_entry_t) / sizeof(long)) + 2;


 start_table_ptr = flow_dma_area_start_addr;


 while (((*start_table_ptr & 0x7FFFFFFF) != 0) && start_table_ptr < flow_dma_area_end_addr)
  start_table_ptr += table_size_in_words;


 if (start_table_ptr >= flow_dma_area_end_addr)
  error = -1;
 else
  *table_address_ptr = start_table_ptr;

 return error;
}
