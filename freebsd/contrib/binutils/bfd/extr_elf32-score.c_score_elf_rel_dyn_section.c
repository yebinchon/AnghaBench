
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int SCORE_ELF_LOG_FILE_ALIGN (int *) ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int * bfd_get_section_by_name (int *,char const*) ;
 int * bfd_make_section_with_flags (int *,char const*,int) ;
 int bfd_set_section_alignment (int *,int *,int ) ;

__attribute__((used)) static asection *
score_elf_rel_dyn_section (bfd *dynobj, bfd_boolean create_p)
{
  static const char dname[] = ".rel.dyn";
  asection *sreloc;

  sreloc = bfd_get_section_by_name (dynobj, dname);
  if (sreloc == ((void*)0) && create_p)
    {
      sreloc = bfd_make_section_with_flags (dynobj, dname,
                                            (SEC_ALLOC
                                             | SEC_LOAD
                                             | SEC_HAS_CONTENTS
                                             | SEC_IN_MEMORY
                                             | SEC_LINKER_CREATED
                                             | SEC_READONLY));
      if (sreloc == ((void*)0)
   || ! bfd_set_section_alignment (dynobj, sreloc,
       SCORE_ELF_LOG_FILE_ALIGN (dynobj)))
 return ((void*)0);
    }
  return sreloc;
}
