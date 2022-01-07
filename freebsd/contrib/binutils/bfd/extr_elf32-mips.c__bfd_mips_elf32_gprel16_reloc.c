
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_14__ {int flags; TYPE_3__* section; } ;
typedef TYPE_4__ asymbol ;
typedef int asection ;
struct TYPE_15__ {TYPE_1__* howto; } ;
typedef TYPE_5__ arelent ;
struct TYPE_13__ {TYPE_2__* output_section; } ;
struct TYPE_12__ {int * owner; } ;
struct TYPE_11__ {scalar_t__ type; } ;


 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 int FALSE ;
 scalar_t__ R_MIPS_LITERAL ;
 int TRUE ;
 scalar_t__ _ (char*) ;
 scalar_t__ _bfd_mips_elf_gprel16_with_gp (int *,TYPE_4__*,TYPE_5__*,int *,int ,void*,int ) ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ bfd_reloc_outofrange ;
 scalar_t__ mips_elf_final_gp (int *,TYPE_4__*,int ,char**,int *) ;

bfd_reloc_status_type
_bfd_mips_elf32_gprel16_reloc (bfd *abfd, arelent *reloc_entry,
          asymbol *symbol, void *data,
          asection *input_section, bfd *output_bfd,
          char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;


  if (reloc_entry->howto->type == R_MIPS_LITERAL
      && output_bfd != ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
 _("literal relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  if (output_bfd != ((void*)0))
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = mips_elf_final_gp (output_bfd, symbol, relocatable, error_message,
      &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  return _bfd_mips_elf_gprel16_with_gp (abfd, symbol, reloc_entry,
     input_section, relocatable,
     data, gp);
}
