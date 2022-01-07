
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_elf_version_expr {int dummy; } ;
struct TYPE_2__ {struct bfd_elf_version_expr* (* new_vers_pattern ) (struct bfd_elf_version_expr*) ;} ;


 TYPE_1__* ld_emulation ;
 struct bfd_elf_version_expr* stub1 (struct bfd_elf_version_expr*) ;

struct bfd_elf_version_expr *
ldemul_new_vers_pattern (struct bfd_elf_version_expr *entry)
{
  if (ld_emulation->new_vers_pattern)
    entry = (*ld_emulation->new_vers_pattern) (entry);
  return entry;
}
