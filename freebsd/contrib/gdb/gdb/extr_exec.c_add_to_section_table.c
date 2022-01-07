
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_table {scalar_t__ addr; scalar_t__ endaddr; struct bfd_section* the_bfd_section; int * bfd; } ;
struct bfd_section {int dummy; } ;
typedef int flagword ;
typedef int bfd ;


 int SEC_ALLOC ;
 int bfd_get_section_flags (int *,struct bfd_section*) ;
 scalar_t__ bfd_section_size (int *,struct bfd_section*) ;
 scalar_t__ bfd_section_vma (int *,struct bfd_section*) ;

__attribute__((used)) static void
add_to_section_table (bfd *abfd, struct bfd_section *asect,
        void *table_pp_char)
{
  struct section_table **table_pp = (struct section_table **) table_pp_char;
  flagword aflag;

  aflag = bfd_get_section_flags (abfd, asect);
  if (!(aflag & SEC_ALLOC))
    return;
  if (0 == bfd_section_size (abfd, asect))
    return;
  (*table_pp)->bfd = abfd;
  (*table_pp)->the_bfd_section = asect;
  (*table_pp)->addr = bfd_section_vma (abfd, asect);
  (*table_pp)->endaddr = (*table_pp)->addr + bfd_section_size (abfd, asect);
  (*table_pp)++;
}
