
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_link_hash_table {TYPE_1__* tls_sec; } ;
struct bfd_link_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_2__ {scalar_t__ vma; int alignment_power; } ;


 scalar_t__ TCB_SIZE ;
 scalar_t__ align_power (scalar_t__,int ) ;
 struct elf_link_hash_table* elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_vma
tpoff (struct bfd_link_info *info, bfd_vma address)
{
  struct elf_link_hash_table *htab = elf_hash_table (info);
  bfd_vma base;


  if (htab->tls_sec == ((void*)0))
    return 0;
  base = align_power ((bfd_vma) TCB_SIZE, htab->tls_sec->alignment_power);
  return address - htab->tls_sec->vma + base;
}
