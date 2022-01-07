
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int scev_initialize (int ) ;
 int tree_loop_optimizer_init () ;

__attribute__((used)) static unsigned int
tree_ssa_loop_init (void)
{
  current_loops = tree_loop_optimizer_init ();
  if (!current_loops)
    return 0;

  scev_initialize (current_loops);
  return 0;
}
