
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_arm_link_hash_table {int * bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int ARM2THUMB_GLUE_SECTION_NAME ;
 int BFD_ASSERT (int ) ;
 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int THUMB2ARM_GLUE_SECTION_NAME ;
 int TRUE ;
 int * bfd_get_section_by_name (int *,int ) ;
 int * bfd_make_section_with_flags (int *,int ,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 struct coff_arm_link_hash_table* coff_arm_hash_table (struct bfd_link_info*) ;

bfd_boolean
bfd_arm_get_bfd_for_interworking (bfd * abfd,
      struct bfd_link_info * info)
{
  struct coff_arm_link_hash_table * globals;
  flagword flags;
  asection * sec;



  if (info->relocatable)
    return TRUE;

  globals = coff_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));

  if (globals->bfd_of_glue_owner != ((void*)0))
    return TRUE;

  sec = bfd_get_section_by_name (abfd, ARM2THUMB_GLUE_SECTION_NAME);

  if (sec == ((void*)0))
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
        | SEC_CODE | SEC_READONLY);
      sec = bfd_make_section_with_flags (abfd, ARM2THUMB_GLUE_SECTION_NAME,
      flags);
      if (sec == ((void*)0)
   || ! bfd_set_section_alignment (abfd, sec, 2))
 return FALSE;
    }

  sec = bfd_get_section_by_name (abfd, THUMB2ARM_GLUE_SECTION_NAME);

  if (sec == ((void*)0))
    {
      flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
        | SEC_CODE | SEC_READONLY);
      sec = bfd_make_section_with_flags (abfd, THUMB2ARM_GLUE_SECTION_NAME,
      flags);

      if (sec == ((void*)0)
   || ! bfd_set_section_alignment (abfd, sec, 2))
 return FALSE;
    }


  globals->bfd_of_glue_owner = abfd;

  return TRUE;
}
