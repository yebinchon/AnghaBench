
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stream; int (* fprintf_func ) (int ,char*,int ) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;
typedef scalar_t__ CGEN_SYNTAX_CHAR_TYPE ;
typedef int CGEN_SYNTAX ;
typedef int CGEN_INSN ;
typedef int CGEN_FIELDS ;
typedef int CGEN_CPU_DESC ;


 int CGEN_INIT_PRINT (int ) ;
 int CGEN_INSN_ATTRS (int const*) ;
 int CGEN_INSN_MNEMONIC (int const*) ;
 int * CGEN_INSN_SYNTAX (int const*) ;
 int CGEN_SYNTAX_CHAR (scalar_t__ const) ;
 scalar_t__ CGEN_SYNTAX_CHAR_P (scalar_t__ const) ;
 int CGEN_SYNTAX_FIELD (scalar_t__ const) ;
 scalar_t__ CGEN_SYNTAX_MNEMONIC_P (scalar_t__ const) ;
 scalar_t__* CGEN_SYNTAX_STRING (int const*) ;
 int mep_cgen_print_operand (int ,int ,TYPE_1__*,int *,int ,int ,int) ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;

__attribute__((used)) static void
print_insn_normal (CGEN_CPU_DESC cd,
     void *dis_info,
     const CGEN_INSN *insn,
     CGEN_FIELDS *fields,
     bfd_vma pc,
     int length)
{
  const CGEN_SYNTAX *syntax = CGEN_INSN_SYNTAX (insn);
  disassemble_info *info = (disassemble_info *) dis_info;
  const CGEN_SYNTAX_CHAR_TYPE *syn;

  CGEN_INIT_PRINT (cd);

  for (syn = CGEN_SYNTAX_STRING (syntax); *syn; ++syn)
    {
      if (CGEN_SYNTAX_MNEMONIC_P (*syn))
 {
   (*info->fprintf_func) (info->stream, "%s", CGEN_INSN_MNEMONIC (insn));
   continue;
 }
      if (CGEN_SYNTAX_CHAR_P (*syn))
 {
   (*info->fprintf_func) (info->stream, "%c", CGEN_SYNTAX_CHAR (*syn));
   continue;
 }


      mep_cgen_print_operand (cd, CGEN_SYNTAX_FIELD (*syn), info,
     fields, CGEN_INSN_ATTRS (insn), pc, length);
    }
}
