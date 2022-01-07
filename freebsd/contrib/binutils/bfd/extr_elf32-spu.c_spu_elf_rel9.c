
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_reloc_status_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_19__ {int value; TYPE_10__* section; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_20__ {scalar_t__ output_offset; TYPE_2__* output_section; } ;
typedef TYPE_5__ asection ;
struct TYPE_21__ {int address; TYPE_3__* howto; scalar_t__ addend; } ;
typedef TYPE_6__ arelent ;
struct TYPE_18__ {long dst_mask; } ;
struct TYPE_17__ {scalar_t__ vma; } ;
struct TYPE_16__ {scalar_t__ vma; } ;
struct TYPE_15__ {TYPE_1__* output_section; } ;


 int bfd_elf_generic_reloc (int *,TYPE_6__*,TYPE_4__*,void*,TYPE_5__*,int *,char**) ;
 long bfd_get_32 (int *,int *) ;
 int bfd_get_section_limit (int *,TYPE_5__*) ;
 int bfd_is_com_section (TYPE_10__*) ;
 int bfd_octets_per_byte (int *) ;
 int bfd_put_32 (int *,long,int *) ;
 int bfd_reloc_ok ;
 int bfd_reloc_outofrange ;
 int bfd_reloc_overflow ;

__attribute__((used)) static bfd_reloc_status_type
spu_elf_rel9 (bfd *abfd, arelent *reloc_entry, asymbol *symbol,
       void *data, asection *input_section,
       bfd *output_bfd, char **error_message)
{
  bfd_size_type octets;
  bfd_vma val;
  long insn;




  if (output_bfd != ((void*)0))
    return bfd_elf_generic_reloc (abfd, reloc_entry, symbol, data,
      input_section, output_bfd, error_message);

  if (reloc_entry->address > bfd_get_section_limit (abfd, input_section))
    return bfd_reloc_outofrange;
  octets = reloc_entry->address * bfd_octets_per_byte (abfd);


  val = 0;
  if (!bfd_is_com_section (symbol->section))
    val = symbol->value;
  if (symbol->section->output_section)
    val += symbol->section->output_section->vma;

  val += reloc_entry->addend;


  val -= input_section->output_section->vma + input_section->output_offset;

  val >>= 2;
  if (val + 256 >= 512)
    return bfd_reloc_overflow;

  insn = bfd_get_32 (abfd, (bfd_byte *) data + octets);



  val = (val & 0x7f) | ((val & 0x180) << 7) | ((val & 0x180) << 16);
  insn &= ~reloc_entry->howto->dst_mask;
  insn |= val & reloc_entry->howto->dst_mask;
  bfd_put_32 (abfd, insn, (bfd_byte *) data + octets);
  return bfd_reloc_ok;
}
