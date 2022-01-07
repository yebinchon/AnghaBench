
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (int *) ;
 int * symbol_queue ;
 scalar_t__ symbol_queue_size ;

void
debug_free_queue (void)
{
  if (symbol_queue)
    {
      free (symbol_queue);
      symbol_queue = ((void*)0);
      symbol_queue_size = 0;
    }
}
