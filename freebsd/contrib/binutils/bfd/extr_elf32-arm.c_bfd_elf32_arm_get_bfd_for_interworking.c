
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct elf32_arm_link_hash_table {TYPE_1__* bfd_of_glue_owner; } ;
struct bfd_link_info {scalar_t__ relocatable; } ;
typedef int bfd_boolean ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ bfd ;


 int BFD_ASSERT (int) ;
 int DYNAMIC ;
 int TRUE ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;

bfd_boolean
bfd_elf32_arm_get_bfd_for_interworking (bfd *abfd, struct bfd_link_info *info)
{
  struct elf32_arm_link_hash_table *globals;



  if (info->relocatable)
    return TRUE;


  BFD_ASSERT (!(abfd->flags & DYNAMIC));

  globals = elf32_arm_hash_table (info);

  BFD_ASSERT (globals != ((void*)0));

  if (globals->bfd_of_glue_owner != ((void*)0))
    return TRUE;


  globals->bfd_of_glue_owner = abfd;

  return TRUE;
}
