
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct block {int dummy; } ;
typedef TYPE_2__* alpha_extra_func_info_t ;
struct TYPE_4__ {int framereg; } ;
struct TYPE_5__ {TYPE_1__ pdr; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ BLOCK_START (struct block*) ;
 int LABEL_DOMAIN ;
 int MIPS_EFI_SYMBOL_NAME ;
 scalar_t__ SYMBOL_VALUE (struct symbol*) ;
 struct block* block_for_pc (scalar_t__) ;
 int find_pc_partial_function (scalar_t__,int *,scalar_t__*,int *) ;
 struct symbol* lookup_symbol (int ,struct block*,int ,int ,int *) ;

__attribute__((used)) static alpha_extra_func_info_t
find_proc_desc (CORE_ADDR pc)
{
  struct block *b = block_for_pc (pc);
  alpha_extra_func_info_t proc_desc = ((void*)0);
  struct symbol *sym = ((void*)0);

  if (b)
    {
      CORE_ADDR startaddr;
      find_pc_partial_function (pc, ((void*)0), &startaddr, ((void*)0));

      if (startaddr > BLOCK_START (b))



 sym = ((void*)0);
      else
 sym = lookup_symbol (MIPS_EFI_SYMBOL_NAME, b, LABEL_DOMAIN, 0, ((void*)0));
    }

  if (sym)
    {
      proc_desc = (alpha_extra_func_info_t) SYMBOL_VALUE (sym);



      if (proc_desc->pdr.framereg == -1)
 proc_desc = ((void*)0);
    }

  return proc_desc;
}
