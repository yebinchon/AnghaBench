
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int flags; TYPE_3__* bfd_section; struct TYPE_13__* next; } ;
typedef TYPE_2__ lang_output_section_statement_type ;
typedef int (* lang_match_sec_type_func ) (int ,TYPE_3__*,int ,TYPE_4__ const*) ;
typedef int flagword ;
struct TYPE_15__ {int flags; int owner; } ;
typedef TYPE_4__ asection ;
struct TYPE_16__ {TYPE_1__* head; } ;
struct TYPE_14__ {int flags; } ;
struct TYPE_12__ {TYPE_2__ output_section_statement; } ;


 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int SEC_SMALL_DATA ;
 int SEC_THREAD_LOCAL ;
 TYPE_6__ lang_output_section_statement ;
 int output_bfd ;

lang_output_section_statement_type *
lang_output_section_find_by_flags (const asection *sec,
       lang_output_section_statement_type **exact,
       lang_match_sec_type_func match_type)
{
  lang_output_section_statement_type *first, *look, *found;
  flagword flags;



  first = &lang_output_section_statement.head->output_section_statement;
  first = first->next;


  found = ((void*)0);
  for (look = first; look; look = look->next)
    {
      flags = look->flags;
      if (look->bfd_section != ((void*)0))
 {
   flags = look->bfd_section->flags;
   if (match_type && !match_type (output_bfd, look->bfd_section,
      sec->owner, sec))
     continue;
 }
      flags ^= sec->flags;
      if (!(flags & (SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD | SEC_READONLY
       | SEC_CODE | SEC_SMALL_DATA | SEC_THREAD_LOCAL)))
 found = look;
    }
  if (found != ((void*)0))
    {
      if (exact != ((void*)0))
 *exact = found;
      return found;
    }

  if (sec->flags & SEC_CODE)
    {

      for (look = first; look; look = look->next)
 {
   flags = look->flags;
   if (look->bfd_section != ((void*)0))
     {
       flags = look->bfd_section->flags;
       if (match_type && !match_type (output_bfd, look->bfd_section,
          sec->owner, sec))
  continue;
     }
   flags ^= sec->flags;
   if (!(flags & (SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD
    | SEC_CODE | SEC_SMALL_DATA | SEC_THREAD_LOCAL)))
     found = look;
 }
    }
  else if (sec->flags & (SEC_READONLY | SEC_THREAD_LOCAL))
    {

      for (look = first; look; look = look->next)
 {
   flags = look->flags;
   if (look->bfd_section != ((void*)0))
     {
       flags = look->bfd_section->flags;
       if (match_type && !match_type (output_bfd, look->bfd_section,
          sec->owner, sec))
  continue;
     }
   flags ^= sec->flags;
   if (!(flags & (SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD
    | SEC_READONLY))
       && !(look->flags & (SEC_SMALL_DATA | SEC_THREAD_LOCAL)))
     found = look;
 }
    }
  else if (sec->flags & SEC_SMALL_DATA)
    {

      for (look = first; look; look = look->next)
 {
   flags = look->flags;
   if (look->bfd_section != ((void*)0))
     {
       flags = look->bfd_section->flags;
       if (match_type && !match_type (output_bfd, look->bfd_section,
          sec->owner, sec))
  continue;
     }
   flags ^= sec->flags;
   if (!(flags & (SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD
    | SEC_THREAD_LOCAL))
       || ((look->flags & SEC_SMALL_DATA)
    && !(sec->flags & SEC_HAS_CONTENTS)))
     found = look;
 }
    }
  else if (sec->flags & SEC_HAS_CONTENTS)
    {

      for (look = first; look; look = look->next)
 {
   flags = look->flags;
   if (look->bfd_section != ((void*)0))
     {
       flags = look->bfd_section->flags;
       if (match_type && !match_type (output_bfd, look->bfd_section,
          sec->owner, sec))
  continue;
     }
   flags ^= sec->flags;
   if (!(flags & (SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD
    | SEC_SMALL_DATA | SEC_THREAD_LOCAL)))
     found = look;
 }
    }
  else
    {

      for (look = first; look; look = look->next)
 {
   flags = look->flags;
   if (look->bfd_section != ((void*)0))
     {
       flags = look->bfd_section->flags;
       if (match_type && !match_type (output_bfd, look->bfd_section,
          sec->owner, sec))
  continue;
     }
   flags ^= sec->flags;
   if (!(flags & SEC_ALLOC))
     found = look;
 }
    }

  if (found || !match_type)
    return found;

  return lang_output_section_find_by_flags (sec, ((void*)0), ((void*)0));
}
