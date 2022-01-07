
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fde_entry {struct fde_entry* next; int * start_address; int * end_address; } ;
struct cie_entry {int dummy; } ;
struct cfi_insn_data {int dummy; } ;
typedef int segT ;


 int EH_FRAME_ALIGNMENT ;
 int SEC_ALLOC ;
 int SEC_DATA ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int _ (char*) ;
 struct fde_entry* all_fde_data ;
 int as_bad (int ) ;
 int bfd_set_section_flags (int ,int ,int) ;
 int flag_traditional_format ;
 int output_fde (struct fde_entry*,struct cie_entry*,struct cfi_insn_data*,int) ;
 int record_alignment (int ,int) ;
 struct cie_entry* select_cie_for_fde (struct fde_entry*,struct cfi_insn_data**) ;
 int stdoutput ;
 int subseg_new (char*,int ) ;
 int subseg_set (int ,int ) ;

void
cfi_finish (void)
{
  segT cfi_seg;
  struct fde_entry *fde;
  int save_flag_traditional_format;

  if (all_fde_data == 0)
    return;


  cfi_seg = subseg_new (".eh_frame", 0);
  bfd_set_section_flags (stdoutput, cfi_seg,
    SEC_ALLOC | SEC_LOAD | SEC_DATA | SEC_READONLY);
  subseg_set (cfi_seg, 0);
  record_alignment (cfi_seg, EH_FRAME_ALIGNMENT);


  save_flag_traditional_format = flag_traditional_format;
  flag_traditional_format = 1;

  for (fde = all_fde_data; fde ; fde = fde->next)
    {
      struct cfi_insn_data *first;
      struct cie_entry *cie;

      if (fde->end_address == ((void*)0))
 {
   as_bad (_("open CFI at the end of file; missing .cfi_endproc directive"));
   fde->end_address = fde->start_address;
 }

      cie = select_cie_for_fde (fde, &first);
      output_fde (fde, cie, first, fde->next == ((void*)0) ? EH_FRAME_ALIGNMENT : 2);
    }

  flag_traditional_format = save_flag_traditional_format;
}
