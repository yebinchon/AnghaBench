
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {unsigned int num_nodes; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 scalar_t__ estimate_num_insns (int ) ;
 int free (int *) ;
 int * get_loop_body (struct loop*) ;

unsigned
tree_num_loop_insns (struct loop *loop)
{
  basic_block *body = get_loop_body (loop);
  block_stmt_iterator bsi;
  unsigned size = 1, i;

  for (i = 0; i < loop->num_nodes; i++)
    for (bsi = bsi_start (body[i]); !bsi_end_p (bsi); bsi_next (&bsi))
      size += estimate_num_insns (bsi_stmt (bsi));
  free (body);

  return size;
}
