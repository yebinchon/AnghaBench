
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_assert (int) ;
 char* lexptr ;
 char* macro_expanded_text ;
 char* macro_original_text ;

void
scan_macro_expansion (char *expansion)
{

  gdb_assert (! macro_original_text);
  gdb_assert (! macro_expanded_text);



  macro_original_text = lexptr;
  lexptr = expansion;


  macro_expanded_text = expansion;
}
