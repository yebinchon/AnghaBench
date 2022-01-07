
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* arch_info; } ;
typedef TYPE_2__ bfd ;
struct TYPE_4__ {char const* printable_name; } ;



const char *
bfd_printable_name (bfd *abfd)
{
  return abfd->arch_info->printable_name;
}
