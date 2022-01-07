
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int lang_statement_union_type ;
struct TYPE_8__ {TYPE_2__* the_bfd; int next; } ;
typedef TYPE_1__ lang_input_statement_type ;
struct TYPE_10__ {TYPE_2__** input_bfds_tail; } ;
struct TYPE_9__ {TYPE_1__* usrdata; struct TYPE_9__* link_next; } ;


 int ASSERT (int) ;
 int bfd_map_over_sections (TYPE_2__*,int ,TYPE_1__*) ;
 int bfd_set_gp_size (TYPE_2__*,int ) ;
 int file_chain ;
 int g_switch_value ;
 int lang_statement_append (int *,int *,int *) ;
 TYPE_3__ link_info ;
 TYPE_2__* output_bfd ;
 int section_already_linked ;

void
ldlang_add_file (lang_input_statement_type *entry)
{
  lang_statement_append (&file_chain,
    (lang_statement_union_type *) entry,
    &entry->next);



  ASSERT (entry->the_bfd->link_next == ((void*)0));
  ASSERT (entry->the_bfd != output_bfd);

  *link_info.input_bfds_tail = entry->the_bfd;
  link_info.input_bfds_tail = &entry->the_bfd->link_next;
  entry->the_bfd->usrdata = entry;
  bfd_set_gp_size (entry->the_bfd, g_switch_value);
  bfd_map_over_sections (entry->the_bfd, section_already_linked, entry);
}
