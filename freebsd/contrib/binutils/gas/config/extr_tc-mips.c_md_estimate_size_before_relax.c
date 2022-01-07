
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int fr_var; int fr_subtype; int fr_symbol; } ;
typedef TYPE_1__ fragS ;
typedef int asection ;


 int FALSE ;
 scalar_t__ NO_PIC ;
 scalar_t__ RELAX_BRANCH_P (int ) ;
 int RELAX_FIRST (int ) ;
 scalar_t__ RELAX_MIPS16_EXTENDED (int ) ;
 scalar_t__ RELAX_MIPS16_P (int ) ;
 int RELAX_SECOND (int ) ;
 int RELAX_USE_SECOND ;
 scalar_t__ SVR4_PIC ;
 scalar_t__ VXWORKS_PIC ;
 int abort () ;
 scalar_t__ mips_pic ;
 int nopic_need_relax (int ,int ) ;
 int pic_need_relax (int ,int *) ;
 int relaxed_branch_length (TYPE_1__*,int *,int ) ;

int
md_estimate_size_before_relax (fragS *fragp, asection *segtype)
{
  int change;

  if (RELAX_BRANCH_P (fragp->fr_subtype))
    {

      fragp->fr_var = relaxed_branch_length (fragp, segtype, FALSE);

      return fragp->fr_var;
    }

  if (RELAX_MIPS16_P (fragp->fr_subtype))


    return (RELAX_MIPS16_EXTENDED (fragp->fr_subtype) ? 4 : 2);

  if (mips_pic == NO_PIC)
    change = nopic_need_relax (fragp->fr_symbol, 0);
  else if (mips_pic == SVR4_PIC)
    change = pic_need_relax (fragp->fr_symbol, segtype);
  else if (mips_pic == VXWORKS_PIC)

    change = 0;
  else
    abort ();

  if (change)
    {
      fragp->fr_subtype |= RELAX_USE_SECOND;
      return -RELAX_FIRST (fragp->fr_subtype);
    }
  else
    return -RELAX_SECOND (fragp->fr_subtype);
}
