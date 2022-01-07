
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct loop {scalar_t__ single_exit; unsigned int num_nodes; } ;
typedef scalar_t__ edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;


 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 int free (int *) ;
 scalar_t__ get_call_expr_in (int ) ;
 int * get_loop_body (struct loop*) ;

__attribute__((used)) static bool
loop_only_exit_p (struct loop *loop, edge exit)
{
  basic_block *body;
  block_stmt_iterator bsi;
  unsigned i;
  tree call;

  if (exit != loop->single_exit)
    return 0;

  body = get_loop_body (loop);
  for (i = 0; i < loop->num_nodes; i++)
    {
      for (bsi = bsi_start (body[0]); !bsi_end_p (bsi); bsi_next (&bsi))
 {
   call = get_call_expr_in (bsi_stmt (bsi));
   if (call && TREE_SIDE_EFFECTS (call))
     {
       free (body);
       return 0;
     }
 }
    }

  free (body);
  return 1;
}
