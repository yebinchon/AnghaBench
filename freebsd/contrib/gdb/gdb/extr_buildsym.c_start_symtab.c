
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context_stack {int dummy; } ;
typedef int CORE_ADDR ;


 int INITIAL_CONTEXT_STACK_SIZE ;
 struct context_stack* context_stack ;
 scalar_t__ context_stack_depth ;
 int context_stack_size ;
 int cp_initialize_namespace () ;
 int * current_subfile ;
 int * file_symbols ;
 int * global_symbols ;
 scalar_t__ have_line_numbers ;
 char* last_source_file ;
 int last_source_start_addr ;
 int start_subfile (char*,char*) ;
 int * subfiles ;
 scalar_t__ within_function ;
 scalar_t__ xmalloc (int) ;

void
start_symtab (char *name, char *dirname, CORE_ADDR start_addr)
{

  last_source_file = name;
  last_source_start_addr = start_addr;
  file_symbols = ((void*)0);
  global_symbols = ((void*)0);
  within_function = 0;
  have_line_numbers = 0;



  if (context_stack == ((void*)0))
    {
      context_stack_size = INITIAL_CONTEXT_STACK_SIZE;
      context_stack = (struct context_stack *)
 xmalloc (context_stack_size * sizeof (struct context_stack));
    }
  context_stack_depth = 0;



  cp_initialize_namespace ();




  subfiles = ((void*)0);
  current_subfile = ((void*)0);
  start_subfile (name, dirname);
}
