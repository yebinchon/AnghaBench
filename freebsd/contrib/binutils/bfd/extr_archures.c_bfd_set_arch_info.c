
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_arch_info_type ;
struct TYPE_3__ {int const* arch_info; } ;
typedef TYPE_1__ bfd ;



void
bfd_set_arch_info (bfd *abfd, const bfd_arch_info_type *arg)
{
  abfd->arch_info = arg;
}
