
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cfun ;
 int end_sequence () ;
 int free_after_compilation (scalar_t__) ;
 int free_after_parsing (scalar_t__) ;
 scalar_t__ in_sequence_p () ;

void
expand_dummy_function_end (void)
{

  while (in_sequence_p ())
    end_sequence ();




  free_after_parsing (cfun);
  free_after_compilation (cfun);
  cfun = 0;
}
