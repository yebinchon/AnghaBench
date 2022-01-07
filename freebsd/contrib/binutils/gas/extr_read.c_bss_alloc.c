
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
typedef int subsegT ;
typedef scalar_t__ segT ;
typedef scalar_t__ addressT ;
struct TYPE_4__ {int bss; } ;
struct TYPE_3__ {int * fr_symbol; } ;


 scalar_t__ C_EXT ;
 int C_STAT ;
 scalar_t__ OUTPUT_FLAVOR ;
 int SEC_ALLOC ;
 scalar_t__ S_GET_SEGMENT (int *) ;
 scalar_t__ S_GET_STORAGE_CLASS (int *) ;
 int S_SET_SEGMENT (int *,scalar_t__) ;
 int S_SET_SIZE (int *,scalar_t__) ;
 int S_SET_STORAGE_CLASS (int *,int ) ;
 int _ (char*) ;
 int as_warn (int ,int ) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 scalar_t__ bfd_get_gp_size (int ) ;
 int bfd_set_section_flags (int ,scalar_t__,int ) ;
 scalar_t__ bfd_target_ecoff_flavour ;
 scalar_t__ bfd_target_elf_flavour ;
 scalar_t__ bss_section ;
 int frag_align (int,int ,int ) ;
 int frag_now ;
 char* frag_var (int ,int,int,int ,int *,scalar_t__,int *) ;
 scalar_t__ now_seg ;
 int now_subseg ;
 int record_alignment (scalar_t__,int) ;
 int rs_org ;
 TYPE_2__* seg_info (scalar_t__) ;
 int stdoutput ;
 scalar_t__ subseg_new (char*,int) ;
 int subseg_set (scalar_t__,int) ;
 TYPE_1__* symbol_get_frag (int *) ;
 int symbol_set_frag (int *,int ) ;

void
bss_alloc (symbolS *symbolP, addressT size, int align)
{
  char *pfrag;
  segT current_seg = now_seg;
  subsegT current_subseg = now_subseg;
  segT bss_seg = bss_section;
  subseg_set (bss_seg, 1);

  if (align)
    {
      record_alignment (bss_seg, align);
      frag_align (align, 0, 0);
    }


  if (S_GET_SEGMENT (symbolP) == bss_seg)
    symbol_get_frag (symbolP)->fr_symbol = ((void*)0);

  symbol_set_frag (symbolP, frag_now);
  pfrag = frag_var (rs_org, 1, 1, 0, symbolP, size, ((void*)0));
  *pfrag = 0;




  S_SET_SEGMENT (symbolP, bss_seg);
  subseg_set (current_seg, current_subseg);
}
