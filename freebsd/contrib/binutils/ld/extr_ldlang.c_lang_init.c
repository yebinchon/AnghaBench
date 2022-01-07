
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lang_definedness_hash_entry {int dummy; } ;
struct TYPE_3__ {int bfd_section; } ;


 int BFD_ABS_SECTION_NAME ;
 int _ (char*) ;
 TYPE_1__* abs_output_section ;
 int bfd_abs_section_ptr ;
 int bfd_hash_table_init_n (int *,int ,int,int) ;
 int einfo (int ) ;
 int file_chain ;
 int first_file ;
 int input_file_chain ;
 int lang_add_input_file (int *,int ,int *) ;
 int lang_definedness_newfunc ;
 int lang_definedness_table ;
 int lang_input_file_is_marker_enum ;
 int lang_list_init (int *) ;
 int lang_output_section_statement ;
 TYPE_1__* lang_output_section_statement_lookup (int ) ;
 int obstack_begin (int *,int) ;
 int output_section_statement_table_init () ;
 int stat_obstack ;
 int * stat_ptr ;
 int statement_list ;

void
lang_init (void)
{
  obstack_begin (&stat_obstack, 1000);

  stat_ptr = &statement_list;

  output_section_statement_table_init ();

  lang_list_init (stat_ptr);

  lang_list_init (&input_file_chain);
  lang_list_init (&lang_output_section_statement);
  lang_list_init (&file_chain);
  first_file = lang_add_input_file (((void*)0), lang_input_file_is_marker_enum,
        ((void*)0));
  abs_output_section =
    lang_output_section_statement_lookup (BFD_ABS_SECTION_NAME);

  abs_output_section->bfd_section = bfd_abs_section_ptr;







  if (!bfd_hash_table_init_n (&lang_definedness_table,
         lang_definedness_newfunc,
         sizeof (struct lang_definedness_hash_entry),
         3))
    einfo (_("%P%F: can not create hash table: %E\n"));
}
