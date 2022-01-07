
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_i386_link_hash_table {int is_vxworks; int plt0_pad_byte; } ;
struct bfd_link_hash_table {int dummy; } ;
typedef int bfd ;


 struct bfd_link_hash_table* elf_i386_link_hash_table_create (int *) ;

__attribute__((used)) static struct bfd_link_hash_table *
elf_i386_vxworks_link_hash_table_create (bfd *abfd)
{
  struct bfd_link_hash_table *ret;
  struct elf_i386_link_hash_table *htab;

  ret = elf_i386_link_hash_table_create (abfd);
  if (ret)
    {
      htab = (struct elf_i386_link_hash_table *) ret;
      htab->is_vxworks = 1;
      htab->plt0_pad_byte = 0x90;
    }

  return ret;
}
