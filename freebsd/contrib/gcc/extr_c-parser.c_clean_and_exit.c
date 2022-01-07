
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int error_mark_node ;
 int finish_block (int ) ;
 int free (int ) ;
 int pop_function_context () ;

__attribute__((used)) static tree
clean_and_exit (tree block)
{
  pop_function_context ();
  free (finish_block (block));
  return error_mark_node;
}
