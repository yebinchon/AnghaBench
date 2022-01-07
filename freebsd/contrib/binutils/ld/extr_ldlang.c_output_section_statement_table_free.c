
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bfd_hash_table_free (int *) ;
 int output_section_statement_table ;

__attribute__((used)) static void
output_section_statement_table_free (void)
{
  bfd_hash_table_free (&output_section_statement_table);
}
