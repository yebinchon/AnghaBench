
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fr_fix; int fr_subtype; int * fr_literal; int * fr_opcode; int fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef int asection ;


 scalar_t__ NO_PIC ;
 int RELAX_NEW (int ) ;
 int RELAX_OLD (int ) ;
 int RELAX_RELOC1 (int ) ;
 int nopic_need_relax (int ,int ) ;
 int pic_need_relax (int ,int *) ;
 scalar_t__ score_pic ;

__attribute__((used)) static int
judge_size_before_relax (fragS * fragp, asection *sec)
{
  int change = 0;

  if (score_pic == NO_PIC)
    change = nopic_need_relax (fragp->fr_symbol, 0);
  else
    change = pic_need_relax (fragp->fr_symbol, sec);

  if (change == 1)
    {


      if (fragp->fr_opcode == ((void*)0))
 {
   fragp->fr_fix = RELAX_NEW (fragp->fr_subtype);
   fragp->fr_opcode = fragp->fr_literal + RELAX_RELOC1 (fragp->fr_subtype);
          return RELAX_NEW (fragp->fr_subtype) - RELAX_OLD (fragp->fr_subtype);
 }
    }

  return 0;
}
