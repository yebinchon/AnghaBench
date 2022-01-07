
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum elf_ppc_reloc_type { ____Placeholder_elf_ppc_reloc_type } elf_ppc_reloc_type ;
typedef int bfd ;
struct TYPE_2__ {int name; } ;


 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int ) ;
 int bfd_error_bad_value ;
 int bfd_set_error (int ) ;
 TYPE_1__** ppc_elf_howto_table ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static void
bad_shared_reloc (bfd *abfd, enum elf_ppc_reloc_type r_type)
{
  (*_bfd_error_handler)
    (_("%B: relocation %s cannot be used when making a shared object"),
     abfd,
     ppc_elf_howto_table[r_type]->name);
  bfd_set_error (bfd_error_bad_value);
}
