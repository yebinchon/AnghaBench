
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct insn_reserv_decl {int dummy; } ;
struct bypass_decl {struct insn_reserv_decl* in_insn_reserv; struct bypass_decl* next; } ;



__attribute__((used)) static struct bypass_decl *
find_bypass (struct bypass_decl *bypass_list,
      struct insn_reserv_decl *in_insn_reserv)
{
  struct bypass_decl *bypass;

  for (bypass = bypass_list; bypass != ((void*)0); bypass = bypass->next)
    if (bypass->in_insn_reserv == in_insn_reserv)
      break;
  return bypass;
}
