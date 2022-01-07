
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_link_hash_table {TYPE_1__* tls_sec; scalar_t__ tls_size; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_2__ {scalar_t__ vma; } ;


 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_vma
tpoff (struct bfd_link_info *info, bfd_vma address)
{
  struct elf_link_hash_table *htab = elf_hash_table (info);


  if (htab->tls_sec == ((void*)0))
    return 0;
  return address - htab->tls_size - htab->tls_sec->vma;
}
