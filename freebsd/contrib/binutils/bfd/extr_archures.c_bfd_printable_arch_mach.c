
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum bfd_architecture { ____Placeholder_bfd_architecture } bfd_architecture ;
struct TYPE_3__ {char const* printable_name; } ;
typedef TYPE_1__ bfd_arch_info_type ;


 TYPE_1__* bfd_lookup_arch (int,unsigned long) ;

const char *
bfd_printable_arch_mach (enum bfd_architecture arch, unsigned long machine)
{
  const bfd_arch_info_type *ap = bfd_lookup_arch (arch, machine);

  if (ap)
    return ap->printable_name;
  return "UNKNOWN!";
}
