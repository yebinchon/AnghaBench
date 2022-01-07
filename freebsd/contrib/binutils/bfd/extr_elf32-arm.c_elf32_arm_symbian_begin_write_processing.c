
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bfd_link_info {int dummy; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ bfd ;


 int D_PAGED ;
 int elf32_arm_begin_write_processing (TYPE_1__*,struct bfd_link_info*) ;

__attribute__((used)) static void
elf32_arm_symbian_begin_write_processing (bfd *abfd,
       struct bfd_link_info *link_info)
{
  abfd->flags &= ~D_PAGED;
  elf32_arm_begin_write_processing(abfd, link_info);
}
