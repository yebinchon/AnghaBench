
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_entry {int other; } ;
typedef int bfd_boolean ;


 scalar_t__ ELF_MIPS_IS_OPTIONAL (int ) ;
 int FALSE ;
 int TRUE ;

bfd_boolean
_bfd_mips_elf_ignore_undef_symbol (struct elf_link_hash_entry *h)
{
  return ELF_MIPS_IS_OPTIONAL (h->other) ? TRUE : FALSE;
}
