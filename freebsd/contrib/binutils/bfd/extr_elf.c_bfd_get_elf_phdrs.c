
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* xvec; } ;
typedef TYPE_2__ bfd ;
struct TYPE_11__ {int e_phnum; } ;
struct TYPE_10__ {int phdr; } ;
struct TYPE_8__ {scalar_t__ flavour; } ;
typedef int Elf_Internal_Phdr ;


 int bfd_error_wrong_format ;
 int bfd_set_error (int ) ;
 scalar_t__ bfd_target_elf_flavour ;
 TYPE_5__* elf_elfheader (TYPE_2__*) ;
 TYPE_3__* elf_tdata (TYPE_2__*) ;
 int memcpy (void*,int ,int) ;

int
bfd_get_elf_phdrs (bfd *abfd, void *phdrs)
{
  int num_phdrs;

  if (abfd->xvec->flavour != bfd_target_elf_flavour)
    {
      bfd_set_error (bfd_error_wrong_format);
      return -1;
    }

  num_phdrs = elf_elfheader (abfd)->e_phnum;
  memcpy (phdrs, elf_tdata (abfd)->phdr,
   num_phdrs * sizeof (Elf_Internal_Phdr));

  return num_phdrs;
}
