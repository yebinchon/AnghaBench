
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ do_tree_profiling () ;
 int flag_unit_at_a_time ;
 int optimize ;

__attribute__((used)) static bool
do_early_tree_profiling (void)
{
  return (do_tree_profiling () && (!flag_unit_at_a_time || !optimize));
}
