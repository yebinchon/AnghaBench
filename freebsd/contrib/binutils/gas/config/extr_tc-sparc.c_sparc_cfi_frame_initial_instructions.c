
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfi_add_CFA_def_cfa (int,int) ;
 int sparc_arch_size ;

void
sparc_cfi_frame_initial_instructions ()
{
  cfi_add_CFA_def_cfa (14, sparc_arch_size == 64 ? 0x7ff : 0);
}
