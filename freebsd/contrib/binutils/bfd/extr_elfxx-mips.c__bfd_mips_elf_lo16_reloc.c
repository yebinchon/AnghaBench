
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int address; int addend; TYPE_4__* howto; } ;
struct mips_hi16 {void* data; struct mips_hi16* next; int * input_section; TYPE_1__ rel; } ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
typedef int asymbol ;
typedef int asection ;
typedef TYPE_1__ arelent ;
struct TYPE_6__ {scalar_t__ type; } ;


 int FALSE ;
 TYPE_4__* MIPS_ELF_RTYPE_TO_HOWTO (int *,int ,int ) ;
 scalar_t__ R_MIPS_GOT16 ;
 int R_MIPS_HI16 ;
 int _bfd_mips16_elf_reloc_shuffle (int *,scalar_t__,int ,int *) ;
 int _bfd_mips16_elf_reloc_unshuffle (int *,scalar_t__,int ,int *) ;
 scalar_t__ _bfd_mips_elf_generic_reloc (int *,TYPE_1__*,int *,void*,int *,int *,char**) ;
 int bfd_get_32 (int *,int *) ;
 scalar_t__ bfd_get_section_limit (int *,int *) ;
 scalar_t__ bfd_reloc_ok ;
 scalar_t__ bfd_reloc_outofrange ;
 int free (struct mips_hi16*) ;
 struct mips_hi16* mips_hi16_list ;

bfd_reloc_status_type
_bfd_mips_elf_lo16_reloc (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
     void *data, asection *input_section,
     bfd *output_bfd, char **error_message)
{
  bfd_vma vallo;
  bfd_byte *location = (bfd_byte *) data + reloc_entry->address;

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;

  _bfd_mips16_elf_reloc_unshuffle (abfd, reloc_entry->howto->type, FALSE,
       location);
  vallo = bfd_get_32 (abfd, location);
  _bfd_mips16_elf_reloc_shuffle (abfd, reloc_entry->howto->type, FALSE,
     location);

  while (mips_hi16_list != ((void*)0))
    {
      bfd_reloc_status_type ret;
      struct mips_hi16 *hi;

      hi = mips_hi16_list;






      if (hi->rel.howto->type == R_MIPS_GOT16)
 hi->rel.howto = MIPS_ELF_RTYPE_TO_HOWTO (abfd, R_MIPS_HI16, FALSE);



      hi->rel.addend += (vallo + 0x8000) & 0xffff;

      ret = _bfd_mips_elf_generic_reloc (abfd, &hi->rel, symbol, hi->data,
      hi->input_section, output_bfd,
      error_message);
      if (ret != bfd_reloc_ok)
 return ret;

      mips_hi16_list = hi->next;
      free (hi);
    }

  return _bfd_mips_elf_generic_reloc (abfd, reloc_entry, symbol, data,
          input_section, output_bfd,
          error_message);
}
