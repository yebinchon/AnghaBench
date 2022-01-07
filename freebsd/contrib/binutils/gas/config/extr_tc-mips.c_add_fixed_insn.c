
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mips_cl_insn {int dummy; } ;
struct TYPE_3__ {int fr_literal; } ;


 char* frag_more (int ) ;
 TYPE_1__* frag_now ;
 int insn_length (struct mips_cl_insn*) ;
 int move_insn (struct mips_cl_insn*,TYPE_1__*,char*) ;

__attribute__((used)) static void
add_fixed_insn (struct mips_cl_insn *insn)
{
  char *f = frag_more (insn_length (insn));
  move_insn (insn, frag_now, f - frag_now->fr_literal);
}
