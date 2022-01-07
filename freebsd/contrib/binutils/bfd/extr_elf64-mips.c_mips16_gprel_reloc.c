
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_17__ {int flags; TYPE_2__* section; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_18__ {int output_offset; } ;
typedef TYPE_5__ asection ;
struct TYPE_19__ {int address; TYPE_3__* howto; } ;
typedef TYPE_6__ arelent ;
struct TYPE_16__ {int type; } ;
struct TYPE_15__ {TYPE_1__* output_section; } ;
struct TYPE_14__ {int * owner; } ;


 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 int FALSE ;
 int TRUE ;
 int _bfd_mips16_elf_reloc_shuffle (int *,int ,int,int *) ;
 int _bfd_mips16_elf_reloc_unshuffle (int *,int ,int ,int *) ;
 scalar_t__ _bfd_mips_elf_gprel16_with_gp (int *,TYPE_4__*,TYPE_6__*,TYPE_5__*,int ,void*,int ) ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ mips_elf64_final_gp (int *,TYPE_4__*,int ,char**,int *) ;

__attribute__((used)) static bfd_reloc_status_type
mips16_gprel_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
      void *data, asection *input_section, bfd *output_bfd,
      char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_byte *location;
  bfd_vma gp;



  if (output_bfd != ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      reloc_entry->address += input_section->output_offset;
      return bfd_reloc_ok;
    }

  if (output_bfd != ((void*)0))
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = mips_elf64_final_gp (output_bfd, symbol, relocatable, error_message,
        &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  location = (bfd_byte *) data + reloc_entry->address;
  _bfd_mips16_elf_reloc_unshuffle (abfd, reloc_entry->howto->type, FALSE,
       location);
  ret = _bfd_mips_elf_gprel16_with_gp (abfd, symbol, reloc_entry,
           input_section, relocatable,
           data, gp);
  _bfd_mips16_elf_reloc_shuffle (abfd, reloc_entry->howto->type, !relocatable,
     location);

  return ret;
}
