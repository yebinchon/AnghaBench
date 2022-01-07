
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rtx_constant_pool {struct constant_descriptor_rtx* first; } ;
struct constant_descriptor_rtx {int align; int constant; int mode; int sym; scalar_t__ mark; struct constant_descriptor_rtx* next; } ;
struct TYPE_3__ {int (* select_rtx_section ) (int ,int ,int ) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;


 scalar_t__ SYMBOL_REF_BLOCK (int ) ;
 scalar_t__ SYMBOL_REF_HAS_BLOCK_INFO_P (int ) ;
 int output_constant_pool_1 (struct constant_descriptor_rtx*,int ) ;
 int place_block_symbol (int ) ;
 int stub1 (int ,int ,int ) ;
 int switch_to_section (int ) ;
 TYPE_2__ targetm ;

__attribute__((used)) static void
output_constant_pool_contents (struct rtx_constant_pool *pool)
{
  struct constant_descriptor_rtx *desc;

  for (desc = pool->first; desc ; desc = desc->next)
    if (desc->mark)
      {




 if (SYMBOL_REF_HAS_BLOCK_INFO_P (desc->sym)
     && SYMBOL_REF_BLOCK (desc->sym))
   place_block_symbol (desc->sym);
 else
   {
     switch_to_section (targetm.asm_out.select_rtx_section
          (desc->mode, desc->constant, desc->align));
     output_constant_pool_1 (desc, desc->align);
   }
      }
}
