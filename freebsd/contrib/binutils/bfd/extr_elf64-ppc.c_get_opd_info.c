
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int asection ;
struct TYPE_3__ {void* opd_adjust; } ;
struct TYPE_4__ {scalar_t__ sec_type; TYPE_1__ u; } ;


 TYPE_2__* ppc64_elf_section_data (int *) ;
 scalar_t__ sec_opd ;

__attribute__((used)) static void *
get_opd_info (asection * sec)
{
  if (sec != ((void*)0)
      && ppc64_elf_section_data (sec) != ((void*)0)
      && ppc64_elf_section_data (sec)->sec_type == sec_opd)
    return ppc64_elf_section_data (sec)->u.opd_adjust;
  return ((void*)0);
}
