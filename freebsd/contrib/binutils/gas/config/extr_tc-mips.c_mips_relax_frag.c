
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int offsetT ;
struct TYPE_5__ {int fr_var; int fr_subtype; } ;
typedef TYPE_1__ fragS ;
typedef int asection ;


 scalar_t__ RELAX_BRANCH_P (int ) ;
 int RELAX_MIPS16_CLEAR_EXTENDED (int ) ;
 scalar_t__ RELAX_MIPS16_EXTENDED (int ) ;
 int RELAX_MIPS16_MARK_EXTENDED (int ) ;
 int RELAX_MIPS16_P (int ) ;
 int TRUE ;
 scalar_t__ mips16_extended_frag (TYPE_1__*,int *,long) ;
 int relaxed_branch_length (TYPE_1__*,int *,int ) ;

int
mips_relax_frag (asection *sec, fragS *fragp, long stretch)
{
  if (RELAX_BRANCH_P (fragp->fr_subtype))
    {
      offsetT old_var = fragp->fr_var;

      fragp->fr_var = relaxed_branch_length (fragp, sec, TRUE);

      return fragp->fr_var - old_var;
    }

  if (! RELAX_MIPS16_P (fragp->fr_subtype))
    return 0;

  if (mips16_extended_frag (fragp, ((void*)0), stretch))
    {
      if (RELAX_MIPS16_EXTENDED (fragp->fr_subtype))
 return 0;
      fragp->fr_subtype = RELAX_MIPS16_MARK_EXTENDED (fragp->fr_subtype);
      return 2;
    }
  else
    {
      if (! RELAX_MIPS16_EXTENDED (fragp->fr_subtype))
 return 0;
      fragp->fr_subtype = RELAX_MIPS16_CLEAR_EXTENDED (fragp->fr_subtype);
      return -2;
    }

  return 0;
}
