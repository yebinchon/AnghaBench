
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct alpha_relax_info {int other; scalar_t__ gotobj; TYPE_12__* tsec; TYPE_3__* link_info; int abfd; TYPE_4__* relend; TYPE_4__* relocs; TYPE_12__* sec; } ;
typedef scalar_t__ bfd_vma ;
struct TYPE_20__ {scalar_t__ gotobj; } ;
struct TYPE_19__ {int r_addend; } ;
struct TYPE_18__ {TYPE_2__* hash; scalar_t__ keep_memory; } ;
struct TYPE_17__ {scalar_t__ creator; } ;
struct TYPE_16__ {scalar_t__ vma; } ;
struct TYPE_15__ {int reloc_count; TYPE_10__* owner; scalar_t__ output_offset; TYPE_1__* output_section; } ;
struct TYPE_14__ {scalar_t__ xvec; } ;
typedef int PTR ;
typedef TYPE_4__ Elf_Internal_Rela ;


 int R_ALPHA_GPDISP ;
 int STO_ALPHA_NOPV ;
 int STO_ALPHA_STD_GPLOAD ;
 TYPE_4__* _bfd_elf_link_read_relocs (int ,TYPE_12__*,int ,TYPE_4__*,scalar_t__) ;
 TYPE_9__* alpha_elf_tdata (TYPE_10__*) ;
 TYPE_4__* elf64_alpha_find_reloc_at_ofs (TYPE_4__*,TYPE_4__*,scalar_t__,int ) ;
 int free (TYPE_4__*) ;

__attribute__((used)) static bfd_vma
elf64_alpha_relax_opt_call (struct alpha_relax_info *info, bfd_vma symval)
{






  if ((info->other & STO_ALPHA_STD_GPLOAD) == STO_ALPHA_NOPV)
    return symval;



  else if ((info->other & STO_ALPHA_STD_GPLOAD) == STO_ALPHA_STD_GPLOAD)
    ;



  else
    {
      Elf_Internal_Rela *tsec_relocs, *tsec_relend, *tsec_free, *gpdisp;
      bfd_vma ofs;


      if (info->sec == info->tsec)
 {
   tsec_relocs = info->relocs;
   tsec_relend = info->relend;
   tsec_free = ((void*)0);
 }
      else
 {
   tsec_relocs = (_bfd_elf_link_read_relocs
           (info->abfd, info->tsec, (PTR) ((void*)0),
    (Elf_Internal_Rela *) ((void*)0),
    info->link_info->keep_memory));
   if (tsec_relocs == ((void*)0))
     return 0;
   tsec_relend = tsec_relocs + info->tsec->reloc_count;
   tsec_free = (info->link_info->keep_memory ? ((void*)0) : tsec_relocs);
 }


      ofs = (symval - info->tsec->output_section->vma
      - info->tsec->output_offset);


      gpdisp = (elf64_alpha_find_reloc_at_ofs
  (tsec_relocs, tsec_relend, ofs, R_ALPHA_GPDISP));

      if (!gpdisp || gpdisp->r_addend != 4)
 {
   if (tsec_free)
     free (tsec_free);
   return 0;
 }
      if (tsec_free)
        free (tsec_free);
    }



  if (info->link_info->hash->creator != info->tsec->owner->xvec
      || info->gotobj != alpha_elf_tdata (info->tsec->owner)->gotobj)
    return 0;

  return symval + 8;
}
