
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {scalar_t__ out_num_pages; scalar_t__ in_num_pages; scalar_t__ out_page_array; scalar_t__ in_page_array; } ;


 int dbg (char*) ;
 int sep_free_dma_pages (scalar_t__,scalar_t__,int) ;

__attribute__((used)) static int sep_free_dma_table_data_handler(struct sep_device *sep)
{
 dbg("SEP Driver:--------> sep_free_dma_table_data_handler start\n");


 sep_free_dma_pages(sep->in_page_array, sep->in_num_pages, 0);


 if (sep->out_page_array)
  sep_free_dma_pages(sep->out_page_array, sep->out_num_pages, 1);


 sep->in_page_array = 0;
 sep->out_page_array = 0;
 sep->in_num_pages = 0;
 sep->out_num_pages = 0;
 dbg("SEP Driver:<-------- sep_free_dma_table_data_handler end\n");
 return 0;
}
