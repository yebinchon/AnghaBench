
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
struct TYPE_3__ {int bits_per_byte; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 TYPE_1__* bfd_lookup_arch (int,unsigned long) ;

unsigned int
bfd_arch_mach_octets_per_byte (enum bfd_architecture arch,
          unsigned long mach)
{
  const bfd_arch_info_type *ap = bfd_lookup_arch (arch, mach);

  if (ap)
    return ap->bits_per_byte / 8;
  return 1;
}
