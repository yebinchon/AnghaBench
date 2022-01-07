
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_exec {int a_relaxable; int a_balign; int a_dalign; int a_talign; void* a_dload; void* a_tload; void* a_drsize; void* a_trsize; void* a_entry; void* a_syms; void* a_bss; void* a_data; void* a_text; int a_info; } ;
struct external_exec {int * e_relaxable; int * e_balign; int * e_dalign; int * e_talign; int e_dload; int e_tload; int e_drsize; int e_trsize; int e_entry; int e_syms; int e_bss; int e_data; int e_text; int e_info; } ;
typedef int bfd ;


 void* GET_WORD (int *,int ) ;
 int H_GET_32 (int *,int ) ;

__attribute__((used)) static void
bout_swap_exec_header_in (bfd *abfd,
     struct external_exec *bytes,
     struct internal_exec *execp)
{

  execp->a_info = H_GET_32 (abfd, bytes->e_info);
  execp->a_text = GET_WORD (abfd, bytes->e_text);
  execp->a_data = GET_WORD (abfd, bytes->e_data);
  execp->a_bss = GET_WORD (abfd, bytes->e_bss);
  execp->a_syms = GET_WORD (abfd, bytes->e_syms);
  execp->a_entry = GET_WORD (abfd, bytes->e_entry);
  execp->a_trsize = GET_WORD (abfd, bytes->e_trsize);
  execp->a_drsize = GET_WORD (abfd, bytes->e_drsize);
  execp->a_tload = GET_WORD (abfd, bytes->e_tload);
  execp->a_dload = GET_WORD (abfd, bytes->e_dload);
  execp->a_talign = bytes->e_talign[0];
  execp->a_dalign = bytes->e_dalign[0];
  execp->a_balign = bytes->e_balign[0];
  execp->a_relaxable = bytes->e_relaxable[0];
}
