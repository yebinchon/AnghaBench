
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct bfd_link_info {int dummy; } ;
struct TYPE_17__ {TYPE_10__* hplt; TYPE_9__* hgot; } ;
struct _bfd_sparc_elf_link_hash_table {TYPE_11__ elf; TYPE_8__* srelplt2; TYPE_7__* splt; } ;
typedef int bfd_vma ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_21__ {int value; TYPE_2__* section; } ;
struct TYPE_22__ {TYPE_3__ def; } ;
struct TYPE_23__ {TYPE_4__ u; } ;
struct TYPE_27__ {int indx; TYPE_5__ root; } ;
struct TYPE_26__ {int size; int * contents; } ;
struct TYPE_25__ {scalar_t__ output_offset; TYPE_6__* output_section; scalar_t__ contents; } ;
struct TYPE_24__ {scalar_t__ vma; } ;
struct TYPE_20__ {int output_offset; TYPE_1__* output_section; } ;
struct TYPE_19__ {int vma; } ;
struct TYPE_18__ {int r_addend; void* r_info; scalar_t__ r_offset; } ;
struct TYPE_16__ {int indx; } ;
typedef TYPE_12__ Elf_Internal_Rela ;
typedef int Elf32_External_Rela ;


 void* ELF32_R_INFO (int ,int ) ;
 int R_SPARC_32 ;
 int R_SPARC_HI22 ;
 int R_SPARC_LO10 ;
 struct _bfd_sparc_elf_link_hash_table* _bfd_sparc_elf_hash_table (struct bfd_link_info*) ;
 int bfd_elf32_swap_reloc_in (int *,int *,TYPE_12__*) ;
 int bfd_elf32_swap_reloc_out (int *,TYPE_12__*,int *) ;
 int bfd_elf32_swap_reloca_out (int *,TYPE_12__*,int *) ;
 int bfd_put_32 (int *,scalar_t__,scalar_t__) ;
 scalar_t__* sparc_vxworks_exec_plt0_entry ;

__attribute__((used)) static void
sparc_vxworks_finish_exec_plt (bfd *output_bfd, struct bfd_link_info *info)
{
  struct _bfd_sparc_elf_link_hash_table *htab;
  Elf_Internal_Rela rela;
  bfd_vma got_base;
  bfd_byte *loc;

  htab = _bfd_sparc_elf_hash_table (info);


  got_base = (htab->elf.hgot->root.u.def.section->output_section->vma
       + htab->elf.hgot->root.u.def.section->output_offset
       + htab->elf.hgot->root.u.def.value);


  bfd_put_32 (output_bfd,
       sparc_vxworks_exec_plt0_entry[0] + ((got_base + 8) >> 10),
       htab->splt->contents);
  bfd_put_32 (output_bfd,
       sparc_vxworks_exec_plt0_entry[1] + ((got_base + 8) & 0x3ff),
       htab->splt->contents + 4);
  bfd_put_32 (output_bfd,
       sparc_vxworks_exec_plt0_entry[2],
       htab->splt->contents + 8);
  bfd_put_32 (output_bfd,
       sparc_vxworks_exec_plt0_entry[3],
       htab->splt->contents + 12);
  bfd_put_32 (output_bfd,
       sparc_vxworks_exec_plt0_entry[4],
       htab->splt->contents + 16);

  loc = htab->srelplt2->contents;


  rela.r_offset = (htab->splt->output_section->vma
     + htab->splt->output_offset);
  rela.r_info = ELF32_R_INFO (htab->elf.hgot->indx, R_SPARC_HI22);
  rela.r_addend = 8;
  bfd_elf32_swap_reloca_out (output_bfd, &rela, loc);
  loc += sizeof (Elf32_External_Rela);


  rela.r_offset += 4;
  rela.r_info = ELF32_R_INFO (htab->elf.hgot->indx, R_SPARC_LO10);
  bfd_elf32_swap_reloca_out (output_bfd, &rela, loc);
  loc += sizeof (Elf32_External_Rela);




  while (loc < htab->srelplt2->contents + htab->srelplt2->size)
    {
      Elf_Internal_Rela rel;


      bfd_elf32_swap_reloc_in (output_bfd, loc, &rel);
      rel.r_info = ELF32_R_INFO (htab->elf.hgot->indx, R_SPARC_HI22);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);
      loc += sizeof (Elf32_External_Rela);


      bfd_elf32_swap_reloc_in (output_bfd, loc, &rel);
      rel.r_info = ELF32_R_INFO (htab->elf.hgot->indx, R_SPARC_LO10);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);
      loc += sizeof (Elf32_External_Rela);


      bfd_elf32_swap_reloc_in (output_bfd, loc, &rel);
      rel.r_info = ELF32_R_INFO (htab->elf.hplt->indx, R_SPARC_32);
      bfd_elf32_swap_reloc_out (output_bfd, &rel, loc);
      loc += sizeof (Elf32_External_Rela);
    }
}
