
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfi_add_CFA_def_cfa (int,int) ;
 int s390_arch_size ;

void
s390_cfi_frame_initial_instructions ()
{
  cfi_add_CFA_def_cfa (15, s390_arch_size == 64 ? 160 : 96);
}
