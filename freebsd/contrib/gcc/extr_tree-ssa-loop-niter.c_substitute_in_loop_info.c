
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {void* estimated_nb_iterations; void* nb_iterations; } ;


 void* simplify_replace_tree (void*,int ,int ) ;

void
substitute_in_loop_info (struct loop *loop, tree name, tree val)
{
  loop->nb_iterations = simplify_replace_tree (loop->nb_iterations, name, val);
  loop->estimated_nb_iterations
   = simplify_replace_tree (loop->estimated_nb_iterations, name, val);
}
