
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct eh_region {scalar_t__ resume; } ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int region_array; } ;


 int TREE_INT_CST_LOW (int ) ;
 int TREE_OPERAND (int ,int ) ;
 struct eh_region* VEC_index (int ,int ,int) ;
 int VOIDmode ;
 TYPE_2__* cfun ;
 int eh_region ;
 int emit_barrier () ;
 scalar_t__ emit_jump_insn (int ) ;
 int gcc_assert (int) ;
 int gen_rtx_RESX (int ,int) ;

void
expand_resx_expr (tree exp)
{
  int region_nr = TREE_INT_CST_LOW (TREE_OPERAND (exp, 0));
  struct eh_region *reg = VEC_index (eh_region,
         cfun->eh->region_array, region_nr);

  gcc_assert (!reg->resume);
  reg->resume = emit_jump_insn (gen_rtx_RESX (VOIDmode, region_nr));
  emit_barrier ();
}
