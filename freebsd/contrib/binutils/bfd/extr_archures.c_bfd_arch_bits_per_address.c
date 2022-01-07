
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* arch_info; } ;
typedef TYPE_2__ bfd ;
struct TYPE_4__ {unsigned int bits_per_address; } ;



unsigned int
bfd_arch_bits_per_address (bfd *abfd)
{
  return abfd->arch_info->bits_per_address;
}
