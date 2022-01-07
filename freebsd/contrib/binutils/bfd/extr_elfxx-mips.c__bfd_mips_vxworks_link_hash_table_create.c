
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_elf_link_hash_table {int is_vxworks; } ;
struct bfd_link_hash_table {int dummy; } ;
typedef int bfd ;


 struct bfd_link_hash_table* _bfd_mips_elf_link_hash_table_create (int *) ;

struct bfd_link_hash_table *
_bfd_mips_vxworks_link_hash_table_create (bfd *abfd)
{
  struct bfd_link_hash_table *ret;

  ret = _bfd_mips_elf_link_hash_table_create (abfd);
  if (ret)
    {
      struct mips_elf_link_hash_table *htab;

      htab = (struct mips_elf_link_hash_table *) ret;
      htab->is_vxworks = 1;
    }
  return ret;
}
