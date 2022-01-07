
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct out_section_hash_entry {int dummy; } ;


 int _ (char*) ;
 int bfd_hash_table_init_n (int *,int ,int,int) ;
 int einfo (int ) ;
 int output_section_statement_newfunc ;
 int output_section_statement_table ;

__attribute__((used)) static void
output_section_statement_table_init (void)
{
  if (!bfd_hash_table_init_n (&output_section_statement_table,
         output_section_statement_newfunc,
         sizeof (struct out_section_hash_entry),
         61))
    einfo (_("%P%F: can not create hash table: %E\n"));
}
