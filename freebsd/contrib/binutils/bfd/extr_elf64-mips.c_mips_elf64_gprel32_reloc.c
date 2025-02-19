
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_15__ {int flags; TYPE_10__* section; scalar_t__ value; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_16__ {int output_offset; } ;
typedef TYPE_4__ asection ;
struct TYPE_17__ {scalar_t__ address; scalar_t__ addend; TYPE_2__* howto; } ;
typedef TYPE_5__ arelent ;
struct TYPE_14__ {scalar_t__ partial_inplace; } ;
struct TYPE_13__ {scalar_t__ vma; int * owner; } ;
struct TYPE_12__ {scalar_t__ output_offset; TYPE_1__* output_section; } ;


 int BSF_LOCAL ;
 int BSF_SECTION_SYM ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 scalar_t__ _ (char*) ;
 scalar_t__ bfd_get_32 (int *,int *) ;
 scalar_t__ bfd_get_section_limit (int *,TYPE_4__*) ;
 scalar_t__ bfd_is_com_section (TYPE_10__*) ;
 int bfd_put_32 (int *,scalar_t__,int *) ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ bfd_reloc_outofrange ;
 scalar_t__ mips_elf64_final_gp (int *,TYPE_3__*,scalar_t__,char**,scalar_t__*) ;

__attribute__((used)) static bfd_reloc_status_type
mips_elf64_gprel32_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
     void *data, asection *input_section, bfd *output_bfd,
     char **error_message)
{
  bfd_boolean relocatable;
  bfd_reloc_status_type ret;
  bfd_vma gp;
  bfd_vma relocation;
  bfd_vma val;


  if (output_bfd != ((void*)0)
      && (symbol->flags & BSF_SECTION_SYM) == 0
      && (symbol->flags & BSF_LOCAL) != 0)
    {
      *error_message = (char *)
 _("32bits gp relative relocation occurs for an external symbol");
      return bfd_reloc_outofrange;
    }

  if (output_bfd != ((void*)0))
    relocatable = TRUE;
  else
    {
      relocatable = FALSE;
      output_bfd = symbol->section->output_section->owner;
    }

  ret = mips_elf64_final_gp (output_bfd, symbol, relocatable,
        error_message, &gp);
  if (ret != bfd_reloc_ok)
    return ret;

  if (bfd_is_com_section (symbol->section))
    relocation = 0;
  else
    relocation = symbol->value;

  relocation += symbol->section->output_section->vma;
  relocation += symbol->section->output_offset;

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;


  val = reloc_entry->addend;

  if (reloc_entry->howto->partial_inplace)
    val += bfd_get_32 (abfd, (bfd_byte *) data + reloc_entry->address);




  if (! relocatable
      || (symbol->flags & BSF_SECTION_SYM) != 0)
    val += relocation - gp;

  if (reloc_entry->howto->partial_inplace)
    bfd_put_32 (abfd, val, (bfd_byte *) data + reloc_entry->address);
  else
    reloc_entry->addend = val;

  if (relocatable)
    reloc_entry->address += input_section->output_offset;

  return bfd_reloc_ok;
}
