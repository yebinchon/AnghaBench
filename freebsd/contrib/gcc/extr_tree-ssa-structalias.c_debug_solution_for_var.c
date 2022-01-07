
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dump_solution_for_var (int ,unsigned int) ;
 int stdout ;

void
debug_solution_for_var (unsigned int var)
{
  dump_solution_for_var (stdout, var);
}
