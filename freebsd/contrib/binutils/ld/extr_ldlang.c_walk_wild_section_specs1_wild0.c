
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct wildcard_list {int dummy; } ;
struct TYPE_5__ {struct wildcard_list** handler_data; } ;
typedef TYPE_1__ lang_wild_statement_type ;
typedef int lang_input_statement_type ;
typedef int callback_t ;
typedef scalar_t__ bfd_boolean ;
typedef int asection ;


 int * find_section (int *,struct wildcard_list*,scalar_t__*) ;
 int walk_wild_consider_section (TYPE_1__*,int *,int *,struct wildcard_list*,int ,void*) ;
 int walk_wild_section_general (TYPE_1__*,int *,int ,void*) ;

__attribute__((used)) static void
walk_wild_section_specs1_wild0 (lang_wild_statement_type *ptr,
    lang_input_statement_type *file,
    callback_t callback,
    void *data)
{





  bfd_boolean multiple_sections_found;
  struct wildcard_list *sec0 = ptr->handler_data[0];
  asection *s0 = find_section (file, sec0, &multiple_sections_found);

  if (multiple_sections_found)
    walk_wild_section_general (ptr, file, callback, data);
  else if (s0)
    walk_wild_consider_section (ptr, file, s0, sec0, callback, data);
}
