
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct elf32_arm_obj_tdata {int dummy; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_6__ {int * any; } ;
struct TYPE_7__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int FALSE ;
 int bfd_elf_mkobject (TYPE_2__*) ;
 int * bfd_zalloc (TYPE_2__*,int) ;

__attribute__((used)) static bfd_boolean
elf32_arm_mkobject (bfd *abfd)
{
  if (abfd->tdata.any == ((void*)0))
    {
      bfd_size_type amt = sizeof (struct elf32_arm_obj_tdata);
      abfd->tdata.any = bfd_zalloc (abfd, amt);
      if (abfd->tdata.any == ((void*)0))
 return FALSE;
    }
  return bfd_elf_mkobject (abfd);
}
