
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_comdat_info {int dummy; } ;
struct bfd_section {int dummy; } ;
typedef int bfd ;
struct TYPE_2__ {struct coff_comdat_info* comdat; } ;


 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_coff_flavour ;
 TYPE_1__* coff_section_data (int *,struct bfd_section*) ;

struct coff_comdat_info *
bfd_coff_get_comdat_section (bfd *abfd, struct bfd_section *sec)
{
  if (bfd_get_flavour (abfd) == bfd_target_coff_flavour
      && coff_section_data (abfd, sec) != ((void*)0))
    return coff_section_data (abfd, sec)->comdat;
  else
    return ((void*)0);
}
