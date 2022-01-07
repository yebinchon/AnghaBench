
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*) ;} ;
struct TYPE_4__ {int nargs; int * arg; } ;
typedef TYPE_1__ ins ;
typedef int bfd_vma ;
struct TYPE_5__ {int size; } ;


 scalar_t__ INST_HAS_REG_LIST ;
 scalar_t__ IS_INSN_MNEMONIC (char*) ;
 TYPE_3__* instruction ;
 int print_arg (int *,int ,struct disassemble_info*) ;
 int processing_argument_number ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;
 int stub3 (int ,char*) ;
 int stub4 (int ,char*) ;

__attribute__((used)) static void
print_arguments (ins *currInsn, bfd_vma memaddr, struct disassemble_info *info)
{
  int i;


  if ((IS_INSN_MNEMONIC ("pop")
       || (IS_INSN_MNEMONIC ("popret")
    || (IS_INSN_MNEMONIC ("push"))))
      && currInsn->nargs == 1)
    {
      info->fprintf_func (info->stream, "RA");
      return;
    }

  for (i = 0; i < currInsn->nargs; i++)
    {
      processing_argument_number = i;


      if ((IS_INSN_MNEMONIC ("bal")) && (i == 0) && instruction->size == 2)
        {
          info->fprintf_func (info->stream, "(ra),");
          continue;
        }

      if ((INST_HAS_REG_LIST) && (i == 2))
        info->fprintf_func (info->stream, "RA");
      else
        print_arg (&currInsn->arg[i], memaddr, info);

      if ((i != currInsn->nargs - 1) && (!IS_INSN_MNEMONIC ("b")))
        info->fprintf_func (info->stream, ",");
    }
}
