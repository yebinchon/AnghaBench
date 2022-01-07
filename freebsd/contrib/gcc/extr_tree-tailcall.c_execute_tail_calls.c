
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tree_optimize_tail_calls_1 (int) ;

__attribute__((used)) static unsigned int
execute_tail_calls (void)
{
  tree_optimize_tail_calls_1 (1);
  return 0;
}
