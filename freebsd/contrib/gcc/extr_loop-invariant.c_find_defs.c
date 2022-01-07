
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct loop {unsigned int num_nodes; } ;
typedef int bitmap ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {int index; } ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int bitmap_set_bit (int ,int ) ;
 int df ;
 int df_analyze (int ) ;
 int df_set_blocks (int ,int ) ;

__attribute__((used)) static void
find_defs (struct loop *loop, basic_block *body)
{
  unsigned i;
  bitmap blocks = BITMAP_ALLOC (((void*)0));

  for (i = 0; i < loop->num_nodes; i++)
    bitmap_set_bit (blocks, body[i]->index);

  df_set_blocks (df, blocks);
  df_analyze (df);
  BITMAP_FREE (blocks);
}
