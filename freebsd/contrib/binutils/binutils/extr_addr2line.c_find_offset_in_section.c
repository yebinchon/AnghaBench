
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;
typedef int bfd ;
typedef int asection ;


 int SEC_ALLOC ;
 scalar_t__ bfd_find_nearest_line (int *,int *,int ,scalar_t__,int *,int *,int *) ;
 int bfd_get_section_flags (int *,int *) ;
 scalar_t__ bfd_get_section_size (int *) ;
 int filename ;
 scalar_t__ found ;
 int functionname ;
 int line ;
 scalar_t__ pc ;
 int syms ;

__attribute__((used)) static void
find_offset_in_section (bfd *abfd, asection *section)
{
  bfd_size_type size;

  if (found)
    return;

  if ((bfd_get_section_flags (abfd, section) & SEC_ALLOC) == 0)
    return;

  size = bfd_get_section_size (section);
  if (pc >= size)
    return;

  found = bfd_find_nearest_line (abfd, section, syms, pc,
     &filename, &functionname, &line);
}
