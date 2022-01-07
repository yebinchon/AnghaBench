
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int flags; TYPE_2__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_16__ {scalar_t__ output_offset; } ;
typedef TYPE_4__ asection ;
struct TYPE_17__ {scalar_t__ addend; int address; } ;
typedef TYPE_5__ arelent ;
struct TYPE_14__ {TYPE_1__* output_section; } ;
struct TYPE_13__ {int * owner; } ;


 int BSF_SECTION_SYM ;
 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ score_elf_final_gp (int *,TYPE_3__*,int ,char**,int *) ;
 scalar_t__ score_elf_gprel15_with_gp (int *,TYPE_3__*,TYPE_5__*,TYPE_4__*,int ,void*,int ) ;

__attribute__((used)) static bfd_reloc_status_type
score_elf_gprel15_reloc (bfd *abfd,
    arelent *reloc_entry,
    asymbol *symbol,
    void * data,
    asection *input_section,
    bfd *output_bfd,
    char **error_message)
{
  bfd_boolean relocateable;
  bfd_reloc_status_type ret;
  bfd_vma gp;

  if (output_bfd != (bfd *) ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0 && reloc_entry->addend == 0)
    {
      reloc_entry->address += input_section->output_offset;
      return bfd_reloc_ok;
    }
  if (output_bfd != (bfd *) ((void*)0))
    relocateable = TRUE;
  else
    {
      relocateable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = score_elf_final_gp (output_bfd, symbol, relocateable, error_message, &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return score_elf_gprel15_with_gp (abfd, symbol, reloc_entry,
                                         input_section, relocateable, data, gp);
}
