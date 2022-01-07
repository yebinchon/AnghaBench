
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct bfd_link_info {scalar_t__ relocatable; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int gc_mark; } ;
typedef TYPE_1__ asection ;


 int ARM2THUMB_GLUE_SECTION_NAME ;
 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 int TRUE ;
 int VFP11_ERRATUM_VENEER_SECTION_NAME ;
 TYPE_1__* bfd_get_section_by_name (int *,int ) ;
 TYPE_1__* bfd_make_section_with_flags (int *,int ,int) ;
 int bfd_set_section_alignment (int *,TYPE_1__*,int) ;

bfd_boolean
bfd_elf32_arm_add_glue_sections_to_bfd (bfd *abfd,
     struct bfd_link_info *info)
{
  flagword flags;
  asection *sec;



  if (info->relocatable)
    return TRUE;

  sec = bfd_get_section_by_name (abfd, ARM2THUMB_GLUE_SECTION_NAME);

  if (sec == ((void*)0))
    {



      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
        | SEC_CODE | SEC_READONLY);

      sec = bfd_make_section_with_flags (abfd,
      ARM2THUMB_GLUE_SECTION_NAME,
      flags);

      if (sec == ((void*)0)
   || !bfd_set_section_alignment (abfd, sec, 2))
 return FALSE;



      sec->gc_mark = 1;
    }

  sec = bfd_get_section_by_name (abfd, THUMB2ARM_GLUE_SECTION_NAME);

  if (sec == ((void*)0))
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
        | SEC_CODE | SEC_READONLY);

      sec = bfd_make_section_with_flags (abfd,
      THUMB2ARM_GLUE_SECTION_NAME,
      flags);

      if (sec == ((void*)0)
   || !bfd_set_section_alignment (abfd, sec, 2))
 return FALSE;

      sec->gc_mark = 1;
    }

  sec = bfd_get_section_by_name (abfd, VFP11_ERRATUM_VENEER_SECTION_NAME);

  if (sec == ((void*)0))
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
        | SEC_CODE | SEC_READONLY);

      sec = bfd_make_section_with_flags (abfd,
      VFP11_ERRATUM_VENEER_SECTION_NAME,
                                         flags);

      if (sec == ((void*)0)
   || !bfd_set_section_alignment (abfd, sec, 2))
 return FALSE;

      sec->gc_mark = 1;
    }

  return TRUE;
}
