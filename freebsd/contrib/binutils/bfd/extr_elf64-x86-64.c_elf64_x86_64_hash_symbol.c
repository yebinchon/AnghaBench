
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ offset; } ;
struct elf_link_hash_entry {int pointer_equality_needed; int def_regular; TYPE_1__ plt; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int _bfd_elf_hash_symbol (struct elf_link_hash_entry*) ;

__attribute__((used)) static bfd_boolean
elf64_x86_64_hash_symbol (struct elf_link_hash_entry *h)
{
  if (h->plt.offset != (bfd_vma) -1
      && !h->def_regular
      && !h->pointer_equality_needed)
    return FALSE;

  return _bfd_elf_hash_symbol (h);
}
