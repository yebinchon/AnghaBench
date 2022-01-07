
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ X_op; int * X_add_symbol; } ;
struct TYPE_5__ {int pc_rel; TYPE_1__ exp; int type; } ;
struct TYPE_6__ {TYPE_2__ reloc; } ;


 int BAD_BRANCH ;
 int BFD_RELOC_THUMB_PCREL_BRANCH23 ;
 scalar_t__ O_symbol ;
 scalar_t__ S_IS_DEFINED (int *) ;
 int THUMB_IS_FUNC (int *) ;
 int constraint (int,int ) ;
 int current_it_mask ;
 int * find_real_start (int *) ;
 TYPE_3__ inst ;

__attribute__((used)) static void
do_t_branch23 (void)
{
  constraint (current_it_mask && current_it_mask != 0x10, BAD_BRANCH);
  inst.reloc.type = BFD_RELOC_THUMB_PCREL_BRANCH23;
  inst.reloc.pc_rel = 1;





  if ( inst.reloc.exp.X_op == O_symbol
      && inst.reloc.exp.X_add_symbol != ((void*)0)
      && S_IS_DEFINED (inst.reloc.exp.X_add_symbol)
      && ! THUMB_IS_FUNC (inst.reloc.exp.X_add_symbol))
    inst.reloc.exp.X_add_symbol =
      find_real_start (inst.reloc.exp.X_add_symbol);
}
