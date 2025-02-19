
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_22__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_24__ {int * name; } ;
struct wildcard_list {struct wildcard_list* next; TYPE_1__ spec; } ;
struct TYPE_26__ {struct wildcard_list* section_list; } ;
typedef TYPE_2__ lang_wild_statement_type ;
struct TYPE_27__ {TYPE_22__* the_bfd; } ;
typedef TYPE_3__ lang_input_statement_type ;
typedef int (* callback_t ) (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*) ;
typedef int bfd_boolean ;
struct TYPE_28__ {struct TYPE_28__* next; } ;
typedef TYPE_5__ asection ;
struct TYPE_25__ {TYPE_5__* sections; } ;


 int FALSE ;
 char* bfd_get_section_name (TYPE_22__*,TYPE_5__*) ;
 scalar_t__ fnmatch (int *,char const*,int ) ;
 scalar_t__ strcmp (int *,char const*) ;
 int stub1 (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*) ;
 int walk_wild_consider_section (TYPE_2__*,TYPE_3__*,TYPE_5__*,struct wildcard_list*,int (*) (TYPE_2__*,struct wildcard_list*,TYPE_5__*,TYPE_3__*,void*),void*) ;
 scalar_t__ wildcardp (int *) ;

__attribute__((used)) static void
walk_wild_section_general (lang_wild_statement_type *ptr,
      lang_input_statement_type *file,
      callback_t callback,
      void *data)
{
  asection *s;
  struct wildcard_list *sec;

  for (s = file->the_bfd->sections; s != ((void*)0); s = s->next)
    {
      sec = ptr->section_list;
      if (sec == ((void*)0))
 (*callback) (ptr, sec, s, file, data);

      while (sec != ((void*)0))
 {
   bfd_boolean skip = FALSE;

   if (sec->spec.name != ((void*)0))
     {
       const char *sname = bfd_get_section_name (file->the_bfd, s);

       if (wildcardp (sec->spec.name))
  skip = fnmatch (sec->spec.name, sname, 0) != 0;
       else
  skip = strcmp (sec->spec.name, sname) != 0;
     }

   if (!skip)
     walk_wild_consider_section (ptr, file, s, sec, callback, data);

   sec = sec->next;
 }
    }
}
