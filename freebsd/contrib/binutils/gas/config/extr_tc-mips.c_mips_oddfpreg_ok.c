
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_opcode {char* name; int pinfo; } ;
struct TYPE_2__ {int isa; } ;




 int INSN_COPROC_MEMORY_DELAY ;
 int INSN_COPROC_MOVE_DELAY ;
 int INSN_LOAD_COPROC_DELAY ;
 int INSN_MACRO ;
 int INSN_STORE_MEMORY ;
 scalar_t__ ISA_HAS_ODD_SINGLE_FPR (int ) ;
 TYPE_1__ mips_opts ;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
mips_oddfpreg_ok (const struct mips_opcode *insn, int argnum)
{
  const char *s = insn->name;

  if (insn->pinfo == INSN_MACRO)

    return 1;

  if (ISA_HAS_ODD_SINGLE_FPR (mips_opts.isa))
    {

      switch (insn->pinfo & (128 | 129))
 {
 case 128:
 case 0:
   return 1;
 case 129:
   return 0;
 default:
   break;
 }


      s = strchr (insn->name, '.');
      if (argnum == 2)
 s = s != ((void*)0) ? strchr (s + 1, '.') : ((void*)0);
      return (s != ((void*)0) && (s[1] == 'w' || s[1] == 's'));
    }


  if ((insn->pinfo & 128)
      && (insn->pinfo & (INSN_COPROC_MEMORY_DELAY | INSN_STORE_MEMORY
    | INSN_LOAD_COPROC_DELAY | INSN_COPROC_MOVE_DELAY)))
    return 1;

  return 0;
}
