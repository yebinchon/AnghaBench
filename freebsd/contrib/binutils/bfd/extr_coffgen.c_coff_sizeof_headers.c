
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct bfd_link_info {int relocatable; } ;
struct TYPE_6__ {size_t section_count; } ;
typedef TYPE_1__ bfd ;


 size_t bfd_coff_aoutsz (TYPE_1__*) ;
 size_t bfd_coff_filhsz (TYPE_1__*) ;
 size_t bfd_coff_scnhsz (TYPE_1__*) ;

int
coff_sizeof_headers (bfd *abfd, struct bfd_link_info *info)
{
  size_t size;

  if (!info->relocatable)
    size = bfd_coff_filhsz (abfd) + bfd_coff_aoutsz (abfd);
  else
    size = bfd_coff_filhsz (abfd);

  size += abfd->section_count * bfd_coff_scnhsz (abfd);
  return size;
}
