
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {int dummy; } ;
typedef int bfd_vma ;
struct TYPE_5__ {scalar_t__ flavour; struct TYPE_5__ const* alternative_target; } ;
typedef TYPE_1__ const bfd_target ;


 scalar_t__ bfd_target_elf_flavour ;
 struct elf_backend_data* xvec_get_elf_backend_data (TYPE_1__ const*) ;

__attribute__((used)) static void
bfd_elf_set_pagesize (const bfd_target *target, bfd_vma size,
        int offset, const bfd_target *orig_target)
{
  if (target->flavour == bfd_target_elf_flavour)
    {
      const struct elf_backend_data *bed;

      bed = xvec_get_elf_backend_data (target);
      *((bfd_vma *) ((char *) bed + offset)) = size;
    }

  if (target->alternative_target
      && target->alternative_target != orig_target)
    bfd_elf_set_pagesize (target->alternative_target, size, offset,
     orig_target);
}
