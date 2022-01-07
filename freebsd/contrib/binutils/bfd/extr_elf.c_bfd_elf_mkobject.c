
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct elf_obj_tdata {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_7__ {int * any; } ;
struct TYPE_8__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;
struct TYPE_9__ {scalar_t__ program_header_size; } ;


 int FALSE ;
 int TRUE ;
 int * bfd_zalloc (TYPE_2__*,int) ;
 TYPE_3__* elf_tdata (TYPE_2__*) ;

bfd_boolean
bfd_elf_mkobject (bfd *abfd)
{
  if (abfd->tdata.any == ((void*)0))
    {
      abfd->tdata.any = bfd_zalloc (abfd, sizeof (struct elf_obj_tdata));
      if (abfd->tdata.any == ((void*)0))
 return FALSE;
    }

  elf_tdata (abfd)->program_header_size = (bfd_size_type) -1;

  return TRUE;
}
