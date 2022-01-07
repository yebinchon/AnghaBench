
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_18__ {scalar_t__ sorted; } ;
struct wildcard_list {TYPE_3__ spec; } ;
struct TYPE_16__ {TYPE_5__* head; } ;
struct TYPE_19__ {scalar_t__ filenames_sorted; TYPE_1__ children; } ;
typedef TYPE_4__ lang_wild_statement_type ;
struct TYPE_22__ {TYPE_11__* section; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_5__* next; } ;
struct TYPE_20__ {TYPE_7__ input_section; TYPE_2__ header; } ;
typedef TYPE_5__ lang_statement_union_type ;
struct TYPE_21__ {char* filename; TYPE_12__* the_bfd; } ;
typedef TYPE_6__ lang_input_statement_type ;
typedef TYPE_7__ lang_input_section_type ;
typedef scalar_t__ bfd_boolean ;
typedef int asection ;
struct TYPE_15__ {char* filename; } ;
struct TYPE_14__ {TYPE_12__* owner; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 char* bfd_get_filename (int *) ;
 char* bfd_get_section_name (TYPE_12__*,int *) ;
 int * bfd_my_archive (TYPE_12__*) ;
 scalar_t__ compare_section (scalar_t__,int *,TYPE_11__*) ;
 scalar_t__ lang_input_section_enum ;
 scalar_t__ none ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static lang_statement_union_type *
wild_sort (lang_wild_statement_type *wild,
    struct wildcard_list *sec,
    lang_input_statement_type *file,
    asection *section)
{
  const char *section_name;
  lang_statement_union_type *l;

  if (!wild->filenames_sorted
      && (sec == ((void*)0) || sec->spec.sorted == none))
    return ((void*)0);

  section_name = bfd_get_section_name (file->the_bfd, section);
  for (l = wild->children.head; l != ((void*)0); l = l->header.next)
    {
      lang_input_section_type *ls;

      if (l->header.type != lang_input_section_enum)
 continue;
      ls = &l->input_section;




      if (wild->filenames_sorted)
 {
   const char *fn, *ln;
   bfd_boolean fa, la;
   int i;






   if (file->the_bfd != ((void*)0)
       && bfd_my_archive (file->the_bfd) != ((void*)0))
     {
       fn = bfd_get_filename (bfd_my_archive (file->the_bfd));
       fa = TRUE;
     }
   else
     {
       fn = file->filename;
       fa = FALSE;
     }

   if (bfd_my_archive (ls->section->owner) != ((void*)0))
     {
       ln = bfd_get_filename (bfd_my_archive (ls->section->owner));
       la = TRUE;
     }
   else
     {
       ln = ls->section->owner->filename;
       la = FALSE;
     }

   i = strcmp (fn, ln);
   if (i > 0)
     continue;
   else if (i < 0)
     break;

   if (fa || la)
     {
       if (fa)
  fn = file->filename;
       if (la)
  ln = ls->section->owner->filename;

       i = strcmp (fn, ln);
       if (i > 0)
  continue;
       else if (i < 0)
  break;
     }
 }




      if (sec != ((void*)0) && sec->spec.sorted != none)
 if (compare_section (sec->spec.sorted, section, ls->section) < 0)
   break;
    }

  return l;
}
