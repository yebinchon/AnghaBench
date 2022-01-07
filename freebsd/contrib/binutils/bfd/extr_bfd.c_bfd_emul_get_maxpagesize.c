
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_vma ;
struct TYPE_5__ {scalar_t__ flavour; } ;
typedef TYPE_1__ bfd_target ;
struct TYPE_6__ {int maxpagesize; } ;


 int abort () ;
 TYPE_1__* bfd_find_target (char const*,int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_2__* xvec_get_elf_backend_data (TYPE_1__ const*) ;

bfd_vma
bfd_emul_get_maxpagesize (const char *emul)
{
  const bfd_target *target;

  target = bfd_find_target (emul, ((void*)0));
  if (target != ((void*)0)
      && target->flavour == bfd_target_elf_flavour)
    return xvec_get_elf_backend_data (target)->maxpagesize;

  abort ();
  return 0;
}
