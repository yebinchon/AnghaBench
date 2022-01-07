
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_3__ {int start_address; } ;
typedef TYPE_1__ bfd ;


 int TRUE ;

bfd_boolean
bfd_set_start_address (bfd *abfd, bfd_vma vma)
{
  abfd->start_address = vma;
  return TRUE;
}
