
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_hash_table {int dummy; } ;
struct _bfd_sparc_elf_link_hash_table {int is_vxworks; } ;
typedef int bfd ;


 struct bfd_link_hash_table* _bfd_sparc_elf_link_hash_table_create (int *) ;

__attribute__((used)) static struct bfd_link_hash_table *
elf32_sparc_vxworks_link_hash_table_create (bfd *abfd)
{
  struct bfd_link_hash_table *ret;

  ret = _bfd_sparc_elf_link_hash_table_create (abfd);
  if (ret)
    {
      struct _bfd_sparc_elf_link_hash_table *htab;

      htab = (struct _bfd_sparc_elf_link_hash_table *) ret;
      htab->is_vxworks = 1;
    }
  return ret;
}
