
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ur_bb_info {int out; int in; int kill; int gen; } ;
struct dataflow {unsigned int block_info_size; struct dataflow* block_info; int block_pool; } ;


 int BITMAP_FREE (int ) ;
 struct df_ur_bb_info* df_ur_get_bb_info (struct dataflow*,unsigned int) ;
 int free (struct dataflow*) ;
 int free_alloc_pool (int ) ;

__attribute__((used)) static void
df_ur_free (struct dataflow *dflow)
{
  if (dflow->block_info)
    {
      unsigned int i;

      for (i = 0; i < dflow->block_info_size; i++)
 {
   struct df_ur_bb_info *bb_info = df_ur_get_bb_info (dflow, i);
   if (bb_info)
     {
       BITMAP_FREE (bb_info->gen);
       BITMAP_FREE (bb_info->kill);
       BITMAP_FREE (bb_info->in);
       BITMAP_FREE (bb_info->out);
     }
 }

      free_alloc_pool (dflow->block_pool);
      dflow->block_info_size = 0;
      free (dflow->block_info);
    }
  free (dflow);
}
