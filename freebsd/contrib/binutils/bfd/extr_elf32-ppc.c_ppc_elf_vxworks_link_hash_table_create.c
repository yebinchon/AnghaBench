
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc_elf_link_hash_table {int is_vxworks; int plt_initial_entry_size; void* plt_slot_size; void* plt_entry_size; int plt_type; } ;
struct bfd_link_hash_table {int dummy; } ;
typedef int bfd ;


 int PLT_VXWORKS ;
 void* VXWORKS_PLT_ENTRY_SIZE ;
 int VXWORKS_PLT_INITIAL_ENTRY_SIZE ;
 struct bfd_link_hash_table* ppc_elf_link_hash_table_create (int *) ;

__attribute__((used)) static struct bfd_link_hash_table *
ppc_elf_vxworks_link_hash_table_create (bfd *abfd)
{
  struct bfd_link_hash_table *ret;

  ret = ppc_elf_link_hash_table_create (abfd);
  if (ret)
    {
      struct ppc_elf_link_hash_table *htab
        = (struct ppc_elf_link_hash_table *)ret;
      htab->is_vxworks = 1;
      htab->plt_type = PLT_VXWORKS;
      htab->plt_entry_size = VXWORKS_PLT_ENTRY_SIZE;
      htab->plt_slot_size = VXWORKS_PLT_ENTRY_SIZE;
      htab->plt_initial_entry_size = VXWORKS_PLT_INITIAL_ENTRY_SIZE;
    }
  return ret;
}
