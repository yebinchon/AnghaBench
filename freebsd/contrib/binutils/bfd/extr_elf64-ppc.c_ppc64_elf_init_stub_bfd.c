
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dynobj; } ;
struct ppc_link_hash_table {TYPE_1__ elf; int * stub_bfd; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd ;
struct TYPE_4__ {int * e_ident; } ;


 size_t EI_CLASS ;
 int ELFCLASS64 ;
 TYPE_2__* elf_elfheader (int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

void
ppc64_elf_init_stub_bfd (bfd *abfd, struct bfd_link_info *info)
{
  struct ppc_link_hash_table *htab;

  elf_elfheader (abfd)->e_ident[EI_CLASS] = ELFCLASS64;




  htab = ppc_hash_table (info);
  htab->stub_bfd = abfd;
  htab->elf.dynobj = abfd;
}
