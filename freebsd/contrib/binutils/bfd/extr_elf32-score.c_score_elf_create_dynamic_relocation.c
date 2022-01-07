
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_14__ {int dynindx; int def_regular; } ;
struct score_elf_link_hash_entry {TYPE_1__ root; } ;
struct bfd_link_info {int symbolic; } ;
typedef scalar_t__ bfd_vma ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_16__ {int reloc_count; int size; scalar_t__ output_offset; TYPE_9__* output_section; int * contents; } ;
typedef TYPE_3__ asection ;
struct TYPE_19__ {scalar_t__ vma; } ;
struct TYPE_15__ {int sh_flags; } ;
struct TYPE_18__ {TYPE_2__ this_hdr; } ;
struct TYPE_17__ {scalar_t__ r_offset; void* r_info; } ;
struct TYPE_13__ {int * dynobj; } ;
typedef TYPE_4__ Elf_Internal_Rela ;
typedef int Elf32_External_Rel ;


 int BFD_ASSERT (int) ;
 void* ELF32_R_INFO (unsigned long,int) ;
 int ELF32_R_TYPE (void*) ;
 scalar_t__ FALSE ;
 scalar_t__ MINUS_ONE ;
 scalar_t__ MINUS_TWO ;
 int R_SCORE_NONE ;
 int R_SCORE_REL32 ;
 int SCORE_ELF_REL_SIZE (int *) ;
 int SHF_WRITE ;
 scalar_t__ TRUE ;
 void* _bfd_elf_section_offset (int *,struct bfd_link_info*,TYPE_3__*,scalar_t__) ;
 int bfd_elf32_swap_reloc_out (int *,TYPE_4__*,int *) ;
 TYPE_10__* elf_hash_table (struct bfd_link_info*) ;
 TYPE_8__* elf_section_data (TYPE_9__*) ;
 TYPE_3__* score_elf_rel_dyn_section (int *,scalar_t__) ;

__attribute__((used)) static bfd_boolean
score_elf_create_dynamic_relocation (bfd *output_bfd,
         struct bfd_link_info *info,
         const Elf_Internal_Rela *rel,
         struct score_elf_link_hash_entry *h,
         bfd_vma symbol,
         bfd_vma *addendp, asection *input_section)
{
  Elf_Internal_Rela outrel[3];
  asection *sreloc;
  bfd *dynobj;
  int r_type;
  long indx;
  bfd_boolean defined_p;

  r_type = ELF32_R_TYPE (rel->r_info);
  dynobj = elf_hash_table (info)->dynobj;
  sreloc = score_elf_rel_dyn_section (dynobj, FALSE);
  BFD_ASSERT (sreloc != ((void*)0));
  BFD_ASSERT (sreloc->contents != ((void*)0));
  BFD_ASSERT (sreloc->reloc_count * SCORE_ELF_REL_SIZE (output_bfd) < sreloc->size);

  outrel[0].r_offset =
    _bfd_elf_section_offset (output_bfd, info, input_section, rel[0].r_offset);
  outrel[1].r_offset =
    _bfd_elf_section_offset (output_bfd, info, input_section, rel[1].r_offset);
  outrel[2].r_offset =
    _bfd_elf_section_offset (output_bfd, info, input_section, rel[2].r_offset);

  if (outrel[0].r_offset == MINUS_ONE)

    return TRUE;

  if (outrel[0].r_offset == MINUS_TWO)
    {



      *addendp += symbol;
      return TRUE;
    }



  if (h != ((void*)0)
      && (! info->symbolic || !h->root.def_regular)


      && h->root.dynindx != -1)
    {
      indx = h->root.dynindx;




      defined_p = FALSE;
    }
  else
    {
      indx = 0;
      defined_p = TRUE;
    }





  if (defined_p && r_type != R_SCORE_REL32)
    *addendp += symbol;



  outrel[0].r_info = ELF32_R_INFO ((unsigned long) indx, R_SCORE_REL32);
  outrel[1].r_info = ELF32_R_INFO (0, R_SCORE_NONE);
  outrel[2].r_info = ELF32_R_INFO (0, R_SCORE_NONE);



  outrel[0].r_offset += (input_section->output_section->vma
    + input_section->output_offset);
  outrel[1].r_offset += (input_section->output_section->vma
    + input_section->output_offset);
  outrel[2].r_offset += (input_section->output_section->vma
    + input_section->output_offset);




  bfd_elf32_swap_reloc_out
      (output_bfd, &outrel[0],
       (sreloc->contents + sreloc->reloc_count * sizeof (Elf32_External_Rel)));


  ++sreloc->reloc_count;



  elf_section_data (input_section->output_section)->this_hdr.sh_flags |= SHF_WRITE;

  return TRUE;
}
