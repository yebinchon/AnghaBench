
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int is_relocatable_executable; } ;
struct elf32_arm_link_hash_table {int plt_entry_size; int symbian_p; int use_blx; TYPE_1__ root; scalar_t__ plt_header_size; } ;
struct bfd_link_hash_table {int dummy; } ;
typedef int bfd ;


 int NUM_ELEM (int ) ;
 struct bfd_link_hash_table* elf32_arm_link_hash_table_create (int *) ;
 int elf32_arm_symbian_plt_entry ;

__attribute__((used)) static struct bfd_link_hash_table *
elf32_arm_symbian_link_hash_table_create (bfd *abfd)
{
  struct bfd_link_hash_table *ret;

  ret = elf32_arm_link_hash_table_create (abfd);
  if (ret)
    {
      struct elf32_arm_link_hash_table *htab
 = (struct elf32_arm_link_hash_table *)ret;

      htab->plt_header_size = 0;

      htab->plt_entry_size = 4 * NUM_ELEM (elf32_arm_symbian_plt_entry);
      htab->symbian_p = 1;

      htab->use_blx = 1;
      htab->root.is_relocatable_executable = 1;
    }
  return ret;
}
