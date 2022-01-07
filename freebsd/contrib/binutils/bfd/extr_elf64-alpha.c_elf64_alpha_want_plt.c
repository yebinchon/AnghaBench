
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ type; TYPE_1__ root; } ;
struct alpha_elf_link_hash_entry {int flags; TYPE_2__ root; } ;
typedef int bfd_boolean ;


 int ALPHA_ELF_LINK_HASH_LU_PLT ;
 scalar_t__ STT_FUNC ;
 scalar_t__ bfd_link_hash_undefined ;
 scalar_t__ bfd_link_hash_undefweak ;

__attribute__((used)) static bfd_boolean
elf64_alpha_want_plt (struct alpha_elf_link_hash_entry *ah)
{
  return ((ah->root.type == STT_FUNC
   || ah->root.root.type == bfd_link_hash_undefweak
   || ah->root.root.type == bfd_link_hash_undefined)
   && (ah->flags & ALPHA_ELF_LINK_HASH_LU_PLT) != 0
   && (ah->flags & ~ALPHA_ELF_LINK_HASH_LU_PLT) == 0);
}
