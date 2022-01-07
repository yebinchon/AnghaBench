
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ asection ;
struct TYPE_6__ {int e_machine; } ;
typedef TYPE_2__ Elf_Internal_Ehdr ;


 int SEC_RELOC ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,int ) ;
 int bfd_error_wrong_format ;
 int bfd_set_error (int ) ;
 TYPE_2__* elf_elfheader (int *) ;

__attribute__((used)) static void
check_for_relocs (bfd * abfd, asection * o, void * failed)
{
  if ((o->flags & SEC_RELOC) != 0)
    {
      Elf_Internal_Ehdr *ehdrp;

      ehdrp = elf_elfheader (abfd);
      _bfd_error_handler (_("%B: Relocations in generic ELF (EM: %d)"),
     abfd, ehdrp->e_machine);

      bfd_set_error (bfd_error_wrong_format);
      * (bfd_boolean *) failed = TRUE;
    }
}
