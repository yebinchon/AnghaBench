
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int * symbol_queue ;
 int symbol_queue_index ;
 int symbol_queue_size ;
 int * xrealloc (int *,int) ;

void
debug_queue_symbol (tree decl)
{
  if (symbol_queue_index >= symbol_queue_size)
    {
      symbol_queue_size += 10;
      symbol_queue = xrealloc (symbol_queue,
          symbol_queue_size * sizeof (tree));
    }

  symbol_queue[symbol_queue_index++] = decl;
}
