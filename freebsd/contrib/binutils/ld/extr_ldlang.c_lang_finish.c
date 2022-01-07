
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int output_section_statement_table_free () ;

void
lang_finish (void)
{
  output_section_statement_table_free ();
}
