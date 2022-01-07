
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {scalar_t__ sections; } ;
typedef TYPE_1__ bfd ;


 int _bfd_elf_close_and_cleanup (TYPE_1__*) ;
 int bfd_map_over_sections (TYPE_1__*,int ,int *) ;
 int unrecord_section_via_map_over_sections ;

__attribute__((used)) static bfd_boolean
elf32_arm_close_and_cleanup (bfd * abfd)
{
  if (abfd->sections)
    bfd_map_over_sections (abfd,
      unrecord_section_via_map_over_sections,
      ((void*)0));

  return _bfd_elf_close_and_cleanup (abfd);
}
