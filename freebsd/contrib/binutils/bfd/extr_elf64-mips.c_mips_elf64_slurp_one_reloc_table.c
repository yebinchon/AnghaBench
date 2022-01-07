
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


typedef enum elf_mips_reloc_type { ____Placeholder_elf_mips_reloc_type } elf_mips_reloc_type ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_22__ {int flags; } ;
typedef TYPE_2__ bfd ;
struct TYPE_23__ {int flags; TYPE_1__* section; } ;
typedef TYPE_3__ asymbol ;
struct TYPE_24__ {int reloc_count; scalar_t__ vma; } ;
typedef TYPE_4__ asection ;
struct TYPE_25__ {int howto; int addend; scalar_t__ address; TYPE_3__** sym_ptr_ptr; } ;
typedef TYPE_5__ arelent ;
struct TYPE_27__ {int r_addend; scalar_t__ r_offset; int r_ssym; int r_sym; int r_type3; int r_type2; int r_type; } ;
struct TYPE_26__ {int sh_entsize; int sh_size; int sh_offset; } ;
struct TYPE_21__ {TYPE_3__** symbol_ptr_ptr; } ;
struct TYPE_20__ {TYPE_3__** symbol_ptr_ptr; } ;
typedef TYPE_6__ Elf_Internal_Shdr ;
typedef TYPE_7__ Elf64_Mips_Internal_Rela ;
typedef int Elf64_Mips_External_Rela ;
typedef int Elf64_Mips_External_Rel ;


 int BFD_ASSERT (int) ;
 int BSF_SECTION_SYM ;
 int DYNAMIC ;
 int EXEC_P ;
 scalar_t__ FALSE ;
 int SEEK_SET ;
 scalar_t__ TRUE ;
 int abort () ;
 TYPE_19__* bfd_abs_section_ptr ;
 int bfd_bread (void*,int ,TYPE_2__*) ;
 void* bfd_malloc (int ) ;
 scalar_t__ bfd_seek (TYPE_2__*,int ,int ) ;
 int free (void*) ;
 int mips_elf64_rtype_to_howto (int,scalar_t__) ;
 int mips_elf64_swap_reloc_in (TYPE_2__*,int *,TYPE_7__*) ;
 int mips_elf64_swap_reloca_in (TYPE_2__*,int *,TYPE_7__*) ;

__attribute__((used)) static bfd_boolean
mips_elf64_slurp_one_reloc_table (bfd *abfd, asection *asect,
      Elf_Internal_Shdr *rel_hdr,
      bfd_size_type reloc_count,
      arelent *relents, asymbol **symbols,
      bfd_boolean dynamic)
{
  void *allocated;
  bfd_byte *native_relocs;
  arelent *relent;
  bfd_vma i;
  int entsize;
  bfd_boolean rela_p;

  allocated = bfd_malloc (rel_hdr->sh_size);
  if (allocated == ((void*)0))
    return FALSE;

  if (bfd_seek (abfd, rel_hdr->sh_offset, SEEK_SET) != 0
      || (bfd_bread (allocated, rel_hdr->sh_size, abfd)
   != rel_hdr->sh_size))
    goto error_return;

  native_relocs = allocated;

  entsize = rel_hdr->sh_entsize;
  BFD_ASSERT (entsize == sizeof (Elf64_Mips_External_Rel)
       || entsize == sizeof (Elf64_Mips_External_Rela));

  if (entsize == sizeof (Elf64_Mips_External_Rel))
    rela_p = FALSE;
  else
    rela_p = TRUE;

  for (i = 0, relent = relents;
       i < reloc_count;
       i++, native_relocs += entsize)
    {
      Elf64_Mips_Internal_Rela rela;
      bfd_boolean used_sym, used_ssym;
      int ir;

      if (entsize == sizeof (Elf64_Mips_External_Rela))
 mips_elf64_swap_reloca_in (abfd,
       (Elf64_Mips_External_Rela *) native_relocs,
       &rela);
      else
 mips_elf64_swap_reloc_in (abfd,
      (Elf64_Mips_External_Rel *) native_relocs,
      &rela);



      used_sym = FALSE;
      used_ssym = FALSE;
      for (ir = 0; ir < 3; ir++)
 {
   enum elf_mips_reloc_type type;

   switch (ir)
     {
     default:
       abort ();
     case 0:
       type = (enum elf_mips_reloc_type) rela.r_type;
       break;
     case 1:
       type = (enum elf_mips_reloc_type) rela.r_type2;
       break;
     case 2:
       type = (enum elf_mips_reloc_type) rela.r_type3;
       break;
     }


   switch (type)
     {
     case 128:
     case 129:
     case 131:
     case 130:
     case 132:
       relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
       break;

     default:
       if (! used_sym)
  {
    if (rela.r_sym == 0)
      relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;
    else
      {
        asymbol **ps, *s;

        ps = symbols + rela.r_sym - 1;
        s = *ps;
        if ((s->flags & BSF_SECTION_SYM) == 0)
   relent->sym_ptr_ptr = ps;
        else
   relent->sym_ptr_ptr = s->section->symbol_ptr_ptr;
      }

    used_sym = TRUE;
  }
       else if (! used_ssym)
  {
    switch (rela.r_ssym)
      {
      case 133:
        relent->sym_ptr_ptr =
   bfd_abs_section_ptr->symbol_ptr_ptr;
        break;

      case 136:
      case 135:
      case 134:


        BFD_ASSERT (0);
        break;

      default:
        BFD_ASSERT (0);
        break;
      }

    used_ssym = TRUE;
  }
       else
  relent->sym_ptr_ptr = bfd_abs_section_ptr->symbol_ptr_ptr;

       break;
     }





   if ((abfd->flags & (EXEC_P | DYNAMIC)) == 0 || dynamic)
     relent->address = rela.r_offset;
   else
     relent->address = rela.r_offset - asect->vma;

   relent->addend = rela.r_addend;

   relent->howto = mips_elf64_rtype_to_howto (type, rela_p);

   ++relent;
 }
    }

  asect->reloc_count += (relent - relents) / 3;

  if (allocated != ((void*)0))
    free (allocated);

  return TRUE;

 error_return:
  if (allocated != ((void*)0))
    free (allocated);
  return FALSE;
}
