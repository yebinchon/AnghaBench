
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* read_memory_func ) (int ,int *,int,TYPE_1__*) ;int (* memory_error_func ) (int,int ,TYPE_1__*) ;} ;
typedef TYPE_1__ disassemble_info ;
typedef int bfd_vma ;
typedef int bfd_byte ;
struct TYPE_11__ {int base_insn_bitsize; scalar_t__ min_insn_bitsize; } ;
typedef TYPE_2__* CGEN_CPU_DESC ;


 int CGEN_MAX_INSN_SIZE ;
 int print_insn (TYPE_2__*,int ,TYPE_1__*,int *,int) ;
 int stub1 (int ,int *,int,TYPE_1__*) ;
 int stub2 (int ,int *,int,TYPE_1__*) ;
 int stub3 (int,int ,TYPE_1__*) ;

__attribute__((used)) static int
default_print_insn (CGEN_CPU_DESC cd, bfd_vma pc, disassemble_info *info)
{
  bfd_byte buf[CGEN_MAX_INSN_SIZE];
  int buflen;
  int status;


  buflen = cd->base_insn_bitsize / 8;
  status = (*info->read_memory_func) (pc, buf, buflen, info);


  if (status != 0 && (cd->min_insn_bitsize < cd->base_insn_bitsize))
    {
      buflen = cd->min_insn_bitsize / 8;
      status = (*info->read_memory_func) (pc, buf, buflen, info);
    }

  if (status != 0)
    {
      (*info->memory_error_func) (status, pc, info);
      return -1;
    }

  return print_insn (cd, pc, info, buf, buflen);
}
