
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dataflow {unsigned int block_info_size; int block_info; } ;


 int last_basic_block ;
 int memset (int ,int ,unsigned int) ;
 int xrealloc (int ,unsigned int) ;

void
df_grow_bb_info (struct dataflow *dflow)
{
  unsigned int new_size = last_basic_block + 1;
  if (dflow->block_info_size < new_size)
    {
      new_size += new_size / 4;
      dflow->block_info = xrealloc (dflow->block_info,
        new_size *sizeof (void*));
      memset (dflow->block_info + dflow->block_info_size, 0,
       (new_size - dflow->block_info_size) *sizeof (void *));
      dflow->block_info_size = new_size;
    }
}
