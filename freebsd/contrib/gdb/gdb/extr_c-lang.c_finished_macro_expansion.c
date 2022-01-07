
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_assert (scalar_t__) ;
 scalar_t__ lexptr ;
 scalar_t__ macro_expanded_text ;
 scalar_t__ macro_original_text ;
 int xfree (scalar_t__) ;

void
finished_macro_expansion (void)
{


  gdb_assert (macro_original_text);
  gdb_assert (macro_expanded_text);


  lexptr = macro_original_text;
  macro_original_text = 0;


  xfree (macro_expanded_text);
  macro_expanded_text = 0;
}
