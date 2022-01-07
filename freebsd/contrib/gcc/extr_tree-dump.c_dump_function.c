
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_dump_index { ____Placeholder_tree_dump_index } tree_dump_index ;
typedef int FILE ;


 int * dump_begin (int,int*) ;
 int dump_end (int,int *) ;
 int dump_function_to_file (int ,int *,int) ;

void
dump_function (enum tree_dump_index phase, tree fn)
{
  FILE *stream;
  int flags;

  stream = dump_begin (phase, &flags);
  if (stream)
    {
      dump_function_to_file (fn, stream, flags);
      dump_end (phase, stream);
    }
}
