
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elf_link_hash_entry {int dummy; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_boolean ;


 int _bfd_elf_dynamic_symbol_p (struct elf_link_hash_entry*,struct bfd_link_info*,int ) ;

__attribute__((used)) static inline bfd_boolean
alpha_elf_dynamic_symbol_p (struct elf_link_hash_entry *h,
       struct bfd_link_info *info)
{
  return _bfd_elf_dynamic_symbol_p (h, info, 0);
}
