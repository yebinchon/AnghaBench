
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {int (* elf_backend_sym_is_global ) (int *,TYPE_1__*) ;} ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ asymbol ;


 int BSF_GLOBAL ;
 int BSF_WEAK ;
 int bfd_get_section (TYPE_1__*) ;
 scalar_t__ bfd_is_com_section (int ) ;
 scalar_t__ bfd_is_und_section (int ) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int stub1 (int *,TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
sym_is_global (bfd *abfd, asymbol *sym)
{

  const struct elf_backend_data *bed = get_elf_backend_data (abfd);
  if (bed->elf_backend_sym_is_global)
    return (*bed->elf_backend_sym_is_global) (abfd, sym);

  return ((sym->flags & (BSF_GLOBAL | BSF_WEAK)) != 0
   || bfd_is_und_section (bfd_get_section (sym))
   || bfd_is_com_section (bfd_get_section (sym)));
}
