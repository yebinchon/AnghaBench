
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int FALSE ;
 int bfd_elf_final_link (int *,struct bfd_link_info*) ;
 int bfd_elf_gc_common_finalize_got_offsets (int *,struct bfd_link_info*) ;

bfd_boolean
bfd_elf_gc_common_final_link (bfd *abfd, struct bfd_link_info *info)
{
  if (!bfd_elf_gc_common_finalize_got_offsets (abfd, info))
    return FALSE;


  return bfd_elf_final_link (abfd, info);
}
