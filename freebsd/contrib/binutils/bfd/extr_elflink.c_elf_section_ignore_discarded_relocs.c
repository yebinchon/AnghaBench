
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct elf_backend_data {scalar_t__ (* elf_backend_ignore_discarded_relocs ) (TYPE_1__*) ;} ;
typedef int bfd_boolean ;
struct TYPE_4__ {int sec_info_type; int owner; } ;
typedef TYPE_1__ asection ;




 int FALSE ;
 int TRUE ;
 struct elf_backend_data* get_elf_backend_data (int ) ;
 scalar_t__ stub1 (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
elf_section_ignore_discarded_relocs (asection *sec)
{
  const struct elf_backend_data *bed;

  switch (sec->sec_info_type)
    {
    case 128:
    case 129:
      return TRUE;
    default:
      break;
    }

  bed = get_elf_backend_data (sec->owner);
  if (bed->elf_backend_ignore_discarded_relocs != ((void*)0)
      && (*bed->elf_backend_ignore_discarded_relocs) (sec))
    return TRUE;

  return FALSE;
}
