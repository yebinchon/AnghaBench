
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct wildcard_list {int dummy; } ;
struct TYPE_13__ {TYPE_3__* head; } ;
struct TYPE_11__ {TYPE_4__ children; } ;
typedef TYPE_2__ lang_wild_statement_type ;
struct TYPE_10__ {TYPE_3__* next; } ;
struct TYPE_12__ {TYPE_1__ header; } ;
typedef TYPE_3__ lang_statement_union_type ;
typedef TYPE_4__ lang_statement_list_type ;
typedef int lang_output_section_statement_type ;
typedef int lang_input_statement_type ;
typedef int asection ;


 int ASSERT (int ) ;
 int lang_add_section (TYPE_4__*,int *,int *) ;
 int lang_list_init (TYPE_4__*) ;
 scalar_t__ unique_section_p (int *) ;
 TYPE_3__* wild_sort (TYPE_2__*,struct wildcard_list*,int *,int *) ;

__attribute__((used)) static void
output_section_callback (lang_wild_statement_type *ptr,
    struct wildcard_list *sec,
    asection *section,
    lang_input_statement_type *file,
    void *output)
{
  lang_statement_union_type *before;


  if (unique_section_p (section))
    return;

  before = wild_sort (ptr, sec, file, section);






  if (before == ((void*)0))
    lang_add_section (&ptr->children, section,
        (lang_output_section_statement_type *) output);
  else
    {
      lang_statement_list_type list;
      lang_statement_union_type **pp;

      lang_list_init (&list);
      lang_add_section (&list, section,
   (lang_output_section_statement_type *) output);



      if (list.head != ((void*)0))
 {
   ASSERT (list.head->header.next == ((void*)0));

   for (pp = &ptr->children.head;
        *pp != before;
        pp = &(*pp)->header.next)
     ASSERT (*pp != ((void*)0));

   list.head->header.next = *pp;
   *pp = list.head;
 }
    }
}
