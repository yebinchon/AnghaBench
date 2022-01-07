
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_exec {int a_relaxable; int a_balign; int a_dalign; int a_talign; int a_dload; int a_tload; int a_drsize; int a_trsize; int a_entry; int a_syms; int a_bss; int a_data; int a_text; int a_info; } ;
struct external_exec {int * e_relaxable; int * e_balign; int * e_dalign; int * e_talign; int e_dload; int e_tload; int e_drsize; int e_trsize; int e_entry; int e_syms; int e_bss; int e_data; int e_text; int e_info; } ;
typedef int bfd ;


 int H_PUT_32 (int *,int ,int ) ;
 int PUT_WORD (int *,int ,int ) ;

__attribute__((used)) static void
bout_swap_exec_header_out (bfd *abfd,
      struct internal_exec *execp,
      struct external_exec *bytes)
{

  H_PUT_32 (abfd, execp->a_info , bytes->e_info);
  PUT_WORD (abfd, execp->a_text , bytes->e_text);
  PUT_WORD (abfd, execp->a_data , bytes->e_data);
  PUT_WORD (abfd, execp->a_bss , bytes->e_bss);
  PUT_WORD (abfd, execp->a_syms , bytes->e_syms);
  PUT_WORD (abfd, execp->a_entry , bytes->e_entry);
  PUT_WORD (abfd, execp->a_trsize, bytes->e_trsize);
  PUT_WORD (abfd, execp->a_drsize, bytes->e_drsize);
  PUT_WORD (abfd, execp->a_tload , bytes->e_tload);
  PUT_WORD (abfd, execp->a_dload , bytes->e_dload);
  bytes->e_talign[0] = execp->a_talign;
  bytes->e_dalign[0] = execp->a_dalign;
  bytes->e_balign[0] = execp->a_balign;
  bytes->e_relaxable[0] = execp->a_relaxable;
}
