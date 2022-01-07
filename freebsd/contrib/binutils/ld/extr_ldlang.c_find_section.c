
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int name; } ;
struct wildcard_list {TYPE_1__ spec; } ;
struct TYPE_7__ {int * found_section; int multiple_sections_found; int member_1; int * member_0; } ;
typedef TYPE_2__ section_iterator_callback_data ;
struct TYPE_8__ {int the_bfd; } ;
typedef TYPE_3__ lang_input_statement_type ;
typedef int bfd_boolean ;
typedef int asection ;


 int FALSE ;
 int bfd_get_section_by_name_if (int ,int ,int ,TYPE_2__*) ;
 int section_iterator_callback ;

__attribute__((used)) static asection *
find_section (lang_input_statement_type *file,
       struct wildcard_list *sec,
       bfd_boolean *multiple_sections_found)
{
  section_iterator_callback_data cb_data = { ((void*)0), FALSE };

  bfd_get_section_by_name_if (file->the_bfd, sec->spec.name,
         section_iterator_callback, &cb_data);
  *multiple_sections_found = cb_data.multiple_sections_found;
  return cb_data.found_section;
}
