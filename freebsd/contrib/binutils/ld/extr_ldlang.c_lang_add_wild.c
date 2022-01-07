
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wildcard_spec {scalar_t__ sorted; int * name; } ;
struct TYPE_5__ {int * name; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_1__ spec; } ;
struct TYPE_6__ {int filenames_sorted; int children; int keep_sections; struct wildcard_list* section_list; int * filename; } ;
typedef TYPE_2__ lang_wild_statement_type ;
typedef int bfd_boolean ;


 int FALSE ;
 void* TRUE ;
 int analyze_walk_wild_section_handler (TYPE_2__*) ;
 scalar_t__ by_name ;
 void* lang_has_input_file ;
 int lang_list_init (int *) ;
 int lang_wild_statement ;
 TYPE_2__* new_stat (int ,int ) ;
 void* placed_commons ;
 int stat_ptr ;
 scalar_t__ strcmp (int *,char*) ;
 int wildcardp (int *) ;

void
lang_add_wild (struct wildcard_spec *filespec,
        struct wildcard_list *section_list,
        bfd_boolean keep_sections)
{
  struct wildcard_list *curr, *next;
  lang_wild_statement_type *new;


  for (curr = section_list, section_list = ((void*)0);
       curr != ((void*)0);
       section_list = curr, curr = next)
    {
      if (curr->spec.name != ((void*)0) && strcmp (curr->spec.name, "COMMON") == 0)
 placed_commons = TRUE;

      next = curr->next;
      curr->next = section_list;
    }

  if (filespec != ((void*)0) && filespec->name != ((void*)0))
    {
      if (strcmp (filespec->name, "*") == 0)
 filespec->name = ((void*)0);
      else if (! wildcardp (filespec->name))
 lang_has_input_file = TRUE;
    }

  new = new_stat (lang_wild_statement, stat_ptr);
  new->filename = ((void*)0);
  new->filenames_sorted = FALSE;
  if (filespec != ((void*)0))
    {
      new->filename = filespec->name;
      new->filenames_sorted = filespec->sorted == by_name;
    }
  new->section_list = section_list;
  new->keep_sections = keep_sections;
  lang_list_init (&new->children);
  analyze_walk_wild_section_handler (new);
}
