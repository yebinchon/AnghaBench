
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int flags; } ;
typedef TYPE_2__ asection ;
struct TYPE_17__ {scalar_t__ check_section_addresses; scalar_t__ relax; scalar_t__ version_exports_section; } ;
struct TYPE_16__ {scalar_t__ text_read_only; } ;
struct TYPE_15__ {int * name; } ;
struct TYPE_14__ {int relax_pass; int relocatable; TYPE_5__* gc_sym_list; TYPE_1__* dynamic_list; } ;
struct TYPE_13__ {int head; } ;
struct TYPE_11__ {int head; } ;


 int FALSE ;
 int SEC_READONLY ;
 int TRUE ;
 int _ (char*) ;
 TYPE_2__* bfd_get_section_by_name (int ,char*) ;
 int bfd_merge_sections (int ,TYPE_4__*) ;
 int bfd_section_already_linked_table_free () ;
 int bfd_section_already_linked_table_init () ;
 TYPE_8__ command_line ;
 TYPE_7__ config ;
 int current_target ;
 int default_target ;
 int einfo (int ) ;
 TYPE_5__ entry_symbol ;
 int init_opb () ;
 int lang_check () ;
 int lang_check_section_addresses () ;
 int lang_common () ;
 int lang_do_assignments () ;
 int lang_do_version_exports_section () ;
 int lang_end () ;
 int lang_finalize_version_expr_head (int *) ;
 int lang_for_each_statement (int ) ;
 int lang_gc_sections () ;
 int lang_place_orphans () ;
 int lang_place_undefineds () ;
 int lang_record_phdrs () ;
 int lang_reset_memory_regions () ;
 int lang_set_startof () ;
 int lang_size_sections (int *,int) ;
 int ldctor_build_sets () ;
 int ldemul_after_allocation () ;
 int ldemul_after_open () ;
 int ldemul_before_allocation () ;
 int ldemul_create_output_section_statements () ;
 int ldemul_finish () ;
 int ldlang_open_output ;
 TYPE_5__* ldlang_undef_chain_list_head ;
 TYPE_4__ link_info ;
 int map_input_to_output_sections (int ,int *,int *) ;
 int open_input_bfds (int ,int ) ;
 int output_bfd ;
 int relax_sections () ;
 TYPE_3__ statement_list ;
 int update_wild_statements (int ) ;

void
lang_process (void)
{

  if (link_info.dynamic_list)
    lang_finalize_version_expr_head (&link_info.dynamic_list->head);

  current_target = default_target;


  lang_for_each_statement (ldlang_open_output);
  init_opb ();

  ldemul_create_output_section_statements ();


  lang_place_undefineds ();

  if (!bfd_section_already_linked_table_init ())
    einfo (_("%P%F: Failed to create hash table\n"));


  current_target = default_target;
  open_input_bfds (statement_list.head, FALSE);

  link_info.gc_sym_list = &entry_symbol;
  if (entry_symbol.name == ((void*)0))
    link_info.gc_sym_list = ldlang_undef_chain_list_head;

  ldemul_after_open ();

  bfd_section_already_linked_table_free ();






  lang_check ();


  if (command_line.version_exports_section)
    lang_do_version_exports_section ();



  ldctor_build_sets ();


  lang_gc_sections ();


  lang_common ();


  update_wild_statements (statement_list.head);



  map_input_to_output_sections (statement_list.head, ((void*)0), ((void*)0));


  lang_place_orphans ();

  if (! link_info.relocatable)
    {
      asection *found;





      bfd_merge_sections (output_bfd, &link_info);


      found = bfd_get_section_by_name (output_bfd, ".text");

      if (found != ((void*)0))
 {
   if (config.text_read_only)
     found->flags |= SEC_READONLY;
   else
     found->flags &= ~SEC_READONLY;
 }
    }



  ldemul_before_allocation ();



  lang_record_phdrs ();


  lang_size_sections (((void*)0), !command_line.relax);


  if (command_line.relax)
    {

      int i = link_info.relax_pass;


      link_info.relax_pass = 0;

      while (i--)
 {
   relax_sections ();
   link_info.relax_pass++;
 }


      lang_do_assignments ();
      lang_reset_memory_regions ();
      lang_size_sections (((void*)0), TRUE);
    }



  ldemul_after_allocation ();


  lang_set_startof ();




  lang_do_assignments ();

  ldemul_finish ();


  if (! link_info.relocatable
      && command_line.check_section_addresses)
    lang_check_section_addresses ();

  lang_end ();
}
