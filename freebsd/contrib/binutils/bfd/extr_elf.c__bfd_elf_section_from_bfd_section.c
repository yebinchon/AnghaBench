
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_backend_data {scalar_t__ (* elf_backend_section_from_bfd_section ) (int *,struct bfd_section*,int*) ;} ;
struct bfd_section {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {scalar_t__ this_idx; } ;


 int SHN_ABS ;
 int SHN_COMMON ;
 int SHN_UNDEF ;
 int bfd_error_nonrepresentable_section ;
 scalar_t__ bfd_is_abs_section (struct bfd_section*) ;
 scalar_t__ bfd_is_com_section (struct bfd_section*) ;
 scalar_t__ bfd_is_und_section (struct bfd_section*) ;
 int bfd_set_error (int ) ;
 TYPE_1__* elf_section_data (struct bfd_section*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 scalar_t__ stub1 (int *,struct bfd_section*,int*) ;

int
_bfd_elf_section_from_bfd_section (bfd *abfd, struct bfd_section *asect)
{
  const struct elf_backend_data *bed;
  int index;

  if (elf_section_data (asect) != ((void*)0)
      && elf_section_data (asect)->this_idx != 0)
    return elf_section_data (asect)->this_idx;

  if (bfd_is_abs_section (asect))
    index = SHN_ABS;
  else if (bfd_is_com_section (asect))
    index = SHN_COMMON;
  else if (bfd_is_und_section (asect))
    index = SHN_UNDEF;
  else
    index = -1;

  bed = get_elf_backend_data (abfd);
  if (bed->elf_backend_section_from_bfd_section)
    {
      int retval = index;

      if ((*bed->elf_backend_section_from_bfd_section) (abfd, asect, &retval))
 return retval;
    }

  if (index == -1)
    bfd_set_error (bfd_error_nonrepresentable_section);

  return index;
}
