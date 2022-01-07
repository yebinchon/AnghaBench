
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;


 int SEC_ALLOC ;
 scalar_t__ bfd_find_nearest_line (int *,int *,int **,scalar_t__,int *,int *,int *) ;
 int bfd_get_section_flags (int *,int *) ;
 scalar_t__ bfd_get_section_size (int *) ;
 scalar_t__ bfd_get_section_vma (int *,int *) ;
 int filename ;
 scalar_t__ found ;
 int functionname ;
 int line ;
 scalar_t__ pc ;

__attribute__((used)) static void
find_address_in_section (bfd *abfd, asection *section, void *data)
{
  bfd_vma vma;
  bfd_size_type size;
  asymbol **syms = (asymbol **) data;

  if (found)
    return;

  if ((bfd_get_section_flags (abfd, section) & SEC_ALLOC) == 0)
    return;

  vma = bfd_get_section_vma (abfd, section);
  if (pc < vma)
    return;

  size = bfd_get_section_size (section);
  if (pc >= vma + size)
    return;

  found = bfd_find_nearest_line (abfd, section, syms, pc - vma,
     &filename, &functionname, &line);
}
