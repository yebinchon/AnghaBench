
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_cl_insn {long where; TYPE_1__** fixp; int * frag; } ;
typedef int fragS ;
struct TYPE_2__ {long fx_where; int * fx_frag; } ;


 size_t ARRAY_SIZE (TYPE_1__**) ;
 int install_insn (struct mips_cl_insn*) ;

__attribute__((used)) static void
move_insn (struct mips_cl_insn *insn, fragS *frag, long where)
{
  size_t i;

  insn->frag = frag;
  insn->where = where;
  for (i = 0; i < ARRAY_SIZE (insn->fixp); i++)
    if (insn->fixp[i] != ((void*)0))
      {
 insn->fixp[i]->fx_frag = frag;
 insn->fixp[i]->fx_where = where;
      }
  install_insn (insn);
}
