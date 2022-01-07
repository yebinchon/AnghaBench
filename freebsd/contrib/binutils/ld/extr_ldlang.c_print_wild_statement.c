
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ sorted; int * name; TYPE_1__* exclude_name_list; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_2__ spec; } ;
struct TYPE_10__ {int name; struct TYPE_10__* next; } ;
typedef TYPE_4__ name_list ;
struct TYPE_9__ {int head; } ;
struct TYPE_11__ {TYPE_3__ children; struct wildcard_list* section_list; scalar_t__ filenames_sorted; int * filename; } ;
typedef TYPE_5__ lang_wild_statement_type ;
typedef int lang_output_section_statement_type ;
struct TYPE_7__ {TYPE_4__* next; int name; } ;


 int minfo (char*,...) ;
 int print_nl () ;
 int print_space () ;
 int print_statement_list (int ,int *) ;

__attribute__((used)) static void
print_wild_statement (lang_wild_statement_type *w,
        lang_output_section_statement_type *os)
{
  struct wildcard_list *sec;

  print_space ();

  if (w->filenames_sorted)
    minfo ("SORT(");
  if (w->filename != ((void*)0))
    minfo ("%s", w->filename);
  else
    minfo ("*");
  if (w->filenames_sorted)
    minfo (")");

  minfo ("(");
  for (sec = w->section_list; sec; sec = sec->next)
    {
      if (sec->spec.sorted)
 minfo ("SORT(");
      if (sec->spec.exclude_name_list != ((void*)0))
 {
   name_list *tmp;
   minfo ("EXCLUDE_FILE(%s", sec->spec.exclude_name_list->name);
   for (tmp = sec->spec.exclude_name_list->next; tmp; tmp = tmp->next)
     minfo (" %s", tmp->name);
   minfo (") ");
 }
      if (sec->spec.name != ((void*)0))
 minfo ("%s", sec->spec.name);
      else
 minfo ("*");
      if (sec->spec.sorted)
 minfo (")");
      if (sec->next)
 minfo (" ");
    }
  minfo (")");

  print_nl ();

  print_statement_list (w->children.head, os);
}
