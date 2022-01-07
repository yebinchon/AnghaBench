
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_lli_entry_t {unsigned long block_size; scalar_t__ physical_address; } ;
struct page {int dummy; } ;


 unsigned long SEP_NUM_ENTRIES_MASK ;
 unsigned long SEP_NUM_ENTRIES_OFFSET_IN_BITS ;
 int sep_free_dma_pages (struct page**,unsigned long,int) ;

__attribute__((used)) static void sep_deallocated_flow_tables(struct sep_lli_entry_t *first_table_ptr)
{

 unsigned long *table_ptr;

 unsigned long num_entries;
 unsigned long num_pages;
 struct page **pages_ptr;

 struct sep_lli_entry_t *info_entry_ptr;


 table_ptr = (unsigned long *) first_table_ptr->physical_address;


 num_entries = (first_table_ptr->block_size >> SEP_NUM_ENTRIES_OFFSET_IN_BITS)
     & SEP_NUM_ENTRIES_MASK;


 while (*table_ptr != 0xffffffff) {

  num_pages = *(table_ptr - 2);


  pages_ptr = (struct page **) (*(table_ptr - 1));


  sep_free_dma_pages(pages_ptr, num_pages, 1);


  info_entry_ptr = ((struct sep_lli_entry_t *) table_ptr) + (num_entries - 1);

  table_ptr = (unsigned long *) info_entry_ptr->physical_address;
  num_entries = (info_entry_ptr->block_size >> SEP_NUM_ENTRIES_OFFSET_IN_BITS) & SEP_NUM_ENTRIES_MASK;
 }

 return;
}
