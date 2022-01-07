
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfi_add_CFA_def_cfa (int,int ) ;

void
ppc_cfi_frame_initial_instructions (void)
{
  cfi_add_CFA_def_cfa (1, 0);
}
