
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int symbolS ;
struct mips_cl_insn {int fixed_p; } ;
typedef int relax_substateT ;
typedef int offsetT ;
struct TYPE_3__ {scalar_t__ fr_literal; } ;


 int frag_grow (int) ;
 scalar_t__ frag_more (int ) ;
 TYPE_1__* frag_now ;
 int frag_var (int ,int,int,int ,int *,int ,int *) ;
 int move_insn (struct mips_cl_insn*,TYPE_1__*,scalar_t__) ;
 int rs_machine_dependent ;

__attribute__((used)) static void
add_relaxed_insn (struct mips_cl_insn *insn, int max_chars, int var,
    relax_substateT subtype, symbolS *symbol, offsetT offset)
{
  frag_grow (max_chars);
  move_insn (insn, frag_now, frag_more (0) - frag_now->fr_literal);
  insn->fixed_p = 1;
  frag_var (rs_machine_dependent, max_chars, var,
     subtype, symbol, offset, ((void*)0));
}
