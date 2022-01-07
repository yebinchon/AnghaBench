
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_22__ {int flags; scalar_t__ xvec; } ;
typedef TYPE_3__ bfd ;
struct TYPE_23__ {scalar_t__ value; int section; TYPE_1__* the_bfd; } ;
typedef TYPE_4__ asymbol ;
struct TYPE_24__ {int flags; unsigned int reloc_count; scalar_t__ vma; TYPE_6__** orelocation; } ;
typedef TYPE_5__ asection ;
struct TYPE_25__ {scalar_t__ address; int addend; TYPE_2__* howto; TYPE_4__** sym_ptr_ptr; } ;
typedef TYPE_6__ arelent ;
struct TYPE_26__ {unsigned int sh_size; unsigned int sh_entsize; scalar_t__ sh_type; int * contents; } ;
struct TYPE_28__ {TYPE_7__ rel_hdr; } ;
struct TYPE_27__ {int r_addend; scalar_t__ r_offset; void* r_info; } ;
struct TYPE_21__ {scalar_t__ type; } ;
struct TYPE_20__ {scalar_t__ xvec; } ;
typedef int * PTR ;
typedef TYPE_7__ Elf_Internal_Shdr ;
typedef TYPE_8__ Elf_Internal_Rela ;
typedef int Elf64_External_Rela ;


 int DYNAMIC ;
 void* ELF64_R_INFO (int,scalar_t__) ;
 scalar_t__ ELF64_R_TYPE_INFO (int ,int ) ;
 int EXEC_P ;
 scalar_t__ R_SPARC_13 ;
 scalar_t__ R_SPARC_LO10 ;
 int R_SPARC_OLO10 ;
 int SEC_RELOC ;
 scalar_t__ SHT_RELA ;
 int STN_UNDEF ;
 scalar_t__ TRUE ;
 int _bfd_elf_symbol_from_bfd_symbol (TYPE_3__*,TYPE_4__**) ;
 int _bfd_elf_validate_reloc (TYPE_3__*,TYPE_6__*) ;
 int abort () ;
 scalar_t__ bfd_alloc (TYPE_3__*,unsigned int) ;
 int bfd_elf64_swap_reloca_out (TYPE_3__*,TYPE_8__*,int *) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 TYPE_9__* elf_section_data (TYPE_5__*) ;

__attribute__((used)) static void
elf64_sparc_write_relocs (bfd *abfd, asection *sec, PTR data)
{
  bfd_boolean *failedp = (bfd_boolean *) data;
  Elf_Internal_Shdr *rela_hdr;
  bfd_vma addr_offset;
  Elf64_External_Rela *outbound_relocas, *src_rela;
  unsigned int idx, count;
  asymbol *last_sym = 0;
  int last_sym_idx = 0;


  if (*failedp)
    return;

  if ((sec->flags & SEC_RELOC) == 0)
    return;





  if (sec->reloc_count == 0)
    return;




  count = 0;
  for (idx = 0; idx < sec->reloc_count; idx++)
    {
      bfd_vma addr;

      ++count;

      addr = sec->orelocation[idx]->address;
      if (sec->orelocation[idx]->howto->type == R_SPARC_LO10
   && idx < sec->reloc_count - 1)
 {
   arelent *r = sec->orelocation[idx + 1];

   if (r->howto->type == R_SPARC_13
       && r->address == addr
       && bfd_is_abs_section ((*r->sym_ptr_ptr)->section)
       && (*r->sym_ptr_ptr)->value == 0)
     ++idx;
 }
    }

  rela_hdr = &elf_section_data (sec)->rel_hdr;

  rela_hdr->sh_size = rela_hdr->sh_entsize * count;
  rela_hdr->contents = (PTR) bfd_alloc (abfd, rela_hdr->sh_size);
  if (rela_hdr->contents == ((void*)0))
    {
      *failedp = TRUE;
      return;
    }


  if (rela_hdr->sh_type != SHT_RELA)
    abort ();




  addr_offset = 0;
  if ((abfd->flags & (EXEC_P | DYNAMIC)) != 0)
    addr_offset = sec->vma;


  outbound_relocas = (Elf64_External_Rela *) rela_hdr->contents;
  src_rela = outbound_relocas;

  for (idx = 0; idx < sec->reloc_count; idx++)
    {
      Elf_Internal_Rela dst_rela;
      arelent *ptr;
      asymbol *sym;
      int n;

      ptr = sec->orelocation[idx];
      sym = *ptr->sym_ptr_ptr;
      if (sym == last_sym)
 n = last_sym_idx;
      else if (bfd_is_abs_section (sym->section) && sym->value == 0)
 n = STN_UNDEF;
      else
 {
   last_sym = sym;
   n = _bfd_elf_symbol_from_bfd_symbol (abfd, &sym);
   if (n < 0)
     {
       *failedp = TRUE;
       return;
     }
   last_sym_idx = n;
 }

      if ((*ptr->sym_ptr_ptr)->the_bfd != ((void*)0)
   && (*ptr->sym_ptr_ptr)->the_bfd->xvec != abfd->xvec
   && ! _bfd_elf_validate_reloc (abfd, ptr))
 {
   *failedp = TRUE;
   return;
 }

      if (ptr->howto->type == R_SPARC_LO10
   && idx < sec->reloc_count - 1)
 {
   arelent *r = sec->orelocation[idx + 1];

   if (r->howto->type == R_SPARC_13
       && r->address == ptr->address
       && bfd_is_abs_section ((*r->sym_ptr_ptr)->section)
       && (*r->sym_ptr_ptr)->value == 0)
     {
       idx++;
       dst_rela.r_info
  = ELF64_R_INFO (n, ELF64_R_TYPE_INFO (r->addend,
            R_SPARC_OLO10));
     }
   else
     dst_rela.r_info = ELF64_R_INFO (n, R_SPARC_LO10);
 }
      else
 dst_rela.r_info = ELF64_R_INFO (n, ptr->howto->type);

      dst_rela.r_offset = ptr->address + addr_offset;
      dst_rela.r_addend = ptr->addend;

      bfd_elf64_swap_reloca_out (abfd, &dst_rela, (bfd_byte *) src_rela);
      ++src_rela;
    }
}
