
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;


 int find_line (int *,int *,int ,int *,int **,char const**,char const**,unsigned int*,unsigned int,void**) ;

bfd_boolean
_bfd_dwarf2_find_nearest_line (bfd *abfd,
          asection *section,
          asymbol **symbols,
          bfd_vma offset,
          const char **filename_ptr,
          const char **functionname_ptr,
          unsigned int *linenumber_ptr,
          unsigned int addr_size,
          void **pinfo)
{
  return find_line (abfd, section, offset, ((void*)0), symbols, filename_ptr,
      functionname_ptr, linenumber_ptr, addr_size,
      pinfo);
}
