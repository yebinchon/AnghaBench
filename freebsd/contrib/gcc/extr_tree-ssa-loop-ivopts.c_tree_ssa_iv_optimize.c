
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {struct loop* tree_root; } ;
struct loop {struct loop* outer; struct loop* inner; struct loop* next; } ;
struct ivopts_data {int dummy; } ;


 int TDF_DETAILS ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int flow_loop_dump (struct loop*,scalar_t__,int *,int) ;
 int tree_ssa_iv_optimize_finalize (struct ivopts_data*) ;
 int tree_ssa_iv_optimize_init (struct ivopts_data*) ;
 int tree_ssa_iv_optimize_loop (struct ivopts_data*,struct loop*) ;

void
tree_ssa_iv_optimize (struct loops *loops)
{
  struct loop *loop;
  struct ivopts_data data;

  tree_ssa_iv_optimize_init (&data);


  loop = loops->tree_root;
  while (loop->inner)
    loop = loop->inner;


  while (loop != loops->tree_root)
    {
      if (dump_file && (dump_flags & TDF_DETAILS))
 flow_loop_dump (loop, dump_file, ((void*)0), 1);

      tree_ssa_iv_optimize_loop (&data, loop);

      if (loop->next)
 {
   loop = loop->next;
   while (loop->inner)
     loop = loop->inner;
 }
      else
 loop = loop->outer;
    }

  tree_ssa_iv_optimize_finalize (&data);
}
