
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {struct name_list* exclude_name_list; } ;
struct wildcard_list {TYPE_1__ spec; } ;
struct name_list {int name; struct name_list* next; } ;
typedef int lang_wild_statement_type ;
struct TYPE_12__ {TYPE_3__* the_bfd; int * filename; } ;
typedef TYPE_4__ lang_input_statement_type ;
typedef int (* callback_t ) (int *,struct wildcard_list*,int *,TYPE_4__*,void*) ;
typedef int bfd_boolean ;
typedef int asection ;
struct TYPE_11__ {TYPE_2__* my_archive; } ;
struct TYPE_10__ {int * filename; } ;


 int FALSE ;
 scalar_t__ fnmatch (int ,int *,int ) ;
 scalar_t__ strcmp (int ,int *) ;
 int stub1 (int *,struct wildcard_list*,int *,TYPE_4__*,void*) ;
 int wildcardp (int ) ;

__attribute__((used)) static void
walk_wild_consider_section (lang_wild_statement_type *ptr,
       lang_input_statement_type *file,
       asection *s,
       struct wildcard_list *sec,
       callback_t callback,
       void *data)
{
  bfd_boolean skip = FALSE;
  struct name_list *list_tmp;



  for (list_tmp = sec->spec.exclude_name_list;
       list_tmp;
       list_tmp = list_tmp->next)
    {
      bfd_boolean is_wildcard = wildcardp (list_tmp->name);
      if (is_wildcard)
 skip = fnmatch (list_tmp->name, file->filename, 0) == 0;
      else
 skip = strcmp (list_tmp->name, file->filename) == 0;



      if (! skip && file->the_bfd != ((void*)0)
   && file->the_bfd->my_archive != ((void*)0)
   && file->the_bfd->my_archive->filename != ((void*)0))
 {
   if (is_wildcard)
     skip = fnmatch (list_tmp->name,
       file->the_bfd->my_archive->filename,
       0) == 0;
   else
     skip = strcmp (list_tmp->name,
      file->the_bfd->my_archive->filename) == 0;
 }

      if (skip)
 break;
    }

  if (!skip)
    (*callback) (ptr, sec, s, file, data);
}
